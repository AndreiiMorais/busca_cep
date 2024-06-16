import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMap extends StatefulWidget {
  const CustomMap({super.key});

  @override
  State<CustomMap> createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  GoogleMapController? mapController; //contrller for Google map
  Set<Marker> markers = {}; //markers for google map
  LatLng showLocation = const LatLng(27.7089427, 85.3086209);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CepBloc, CepState>(
      bloc: serviceLocator(),
      listener: (context, state) async {
        state.maybeWhen(
          mapLoaded: (position) {
            setState(() {
              markers.clear();
              markers.add(
                Marker(
                  markerId: const MarkerId('0'),
                  position: LatLng(
                    position.latitude,
                    position.longitude,
                  ),
                ),
              );
              showLocation = position;
            });
          },
          orElse: () {},
        );
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(),
        body: state.maybeWhen(
          mapLoaded: (position) => GoogleMap(
            zoomGesturesEnabled: true,
            initialCameraPosition: CameraPosition(
              target: position,
              zoom: 12.5,
            ),
            markers: markers,
            mapType: MapType.normal,
            onMapCreated: (controller) {
              setState(() {
                mapController = controller;
              });
            },
          ),
          orElse: () => null,
        ),
      ),
    );
  }
}
