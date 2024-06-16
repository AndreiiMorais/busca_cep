import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/features/presenter/widgets/cards/cep_card.dart';
import 'package:busca_cep/features/presenter/widgets/dialogs/cep_info_dialog/cep_info_dialog.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedCepsByDistrict extends StatelessWidget {
  SavedCepsByDistrict({super.key});
  final CepBloc bloc = serviceLocator();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CepBloc, CepState>(
      buildWhen: (previous, current) => current.maybeWhen(
        loadedCepsByDistrict: (ceps) => true,
        orElse: () => false,
      ),
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
            loadedCepsByDistrict: (ceps) => Scaffold(
                  appBar: AppBar(
                    title: ceps.first.district.isNotEmpty
                        ? Text(ceps.first.district)
                        : const Text(cepWithoutDistrict),
                  ),
                  body: ListView.builder(
                    itemCount: ceps.length,
                    itemBuilder: (context, index) {
                      return CepCard(
                        cep: ceps[index],
                        onTap: () => showCepInfoDialog(
                          context: context,
                          cep: ceps[index],
                          primaryButton: ElevatedButton(
                            onPressed: () {
                              bloc.add(CepEvent.openInMap(ceps[index]));
                              Navigator.of(context).pushNamed('/Map');
                            },
                            child: const Text('Ver no mapa'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
