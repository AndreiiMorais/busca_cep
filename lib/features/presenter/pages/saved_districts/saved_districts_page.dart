import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/features/presenter/widgets/cards/district_card.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedDistrictsPage extends StatelessWidget {
  final CepBloc bloc = serviceLocator();
  SavedDistrictsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CepBloc, CepState>(
      bloc: bloc,
      buildWhen: (previous, current) => current.maybeWhen(
        loadedSavedDistricts: (districts) => true,
        loadingSavedDistricts: () => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Localidades'),
          ),
          body: state.maybeWhen(
            loadedSavedDistricts: (districts) {
              return ListView.builder(
                itemCount: districts.length,
                itemBuilder: (context, index) {
                  return DistrictCard(
                    district: districts[index],
                    onTap: () {
                      bloc.add(CepEvent.loadSavedCeps(districts[index]));
                      Navigator.of(context).pushNamed('/districts/ceps');
                    },
                  );
                },
              );
            },
            loadingSavedDistricts: () => Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            orElse: () {
              return null;
            },
          ),
        );
      },
    );
  }
}
