import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/features/presenter/widgets/dialogs/cep_info_dialog/cep_info_dialog.dart';
import 'package:busca_cep/features/presenter/widgets/loader/loader.dart';
import 'package:busca_cep/features/presenter/widgets/snackbars/error_snackbar/error_snackbar.dart';
import 'package:busca_cep/features/presenter/widgets/snackbars/save_success_snackbar/save_success_snackbar.dart';
import 'package:busca_cep/features/presenter/widgets/textfields/search_cep_textfield.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SearchCepHomepage extends StatefulWidget {
  const SearchCepHomepage({super.key});

  @override
  State<SearchCepHomepage> createState() => _SearchCepHomepageState();
}

class _SearchCepHomepageState extends State<SearchCepHomepage> {
  late TextEditingController _controller;
  late CepBloc _bloc;
  String? error;

  @override
  void initState() {
    _bloc = serviceLocator();
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CepBloc, CepState>(
      bloc: _bloc,
      listener: (context, state) {
        state.maybeWhen(
          showErrorSnackbar: () {
            error = null;
            context.hideLoader();
            ScaffoldMessenger.of(context).showSnackBar(
              ErrorSnackbar(
                context: context,
              ),
            );
          },
          showSuccessSnackbar: () {
            error = null;
            context.hideLoader();
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SaveSuccessSnackbar(
                context: context,
              ),
            );
          },
          inexistentCepError: () {
            context.hideLoader();
            error = 'O Cep buscado não foi encontrado nos servidores';
          },
          loadedCep: (cep) {
            error = null;
            context.hideLoader();
            _controller.clear();
            showCepInfoDialog(
              context: context,
              cep: cep,
              primaryButton: TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Descartar',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              secondaryButton: ElevatedButton(
                onPressed: () => _bloc.add(CepEvent.saveCep(cep)),
                child: const Text('Salvar Cep'),
              ),
            );
          },
          loadingCep: () {
            error = null;
            context.showLoader();
          },
          savingCep: () {
            error = null;
            context.showLoader();
          },
          orElse: () {
            error = null;
            context.hideLoader();
          },
        );
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Busca'),
          actions: [
            PopupMenuButton<String>(
              itemBuilder: (context) {
                return [
                  PopupMenuItem<String>(
                    onTap: () {
                      serviceLocator<Box<CepEntity>>().clear();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SaveSuccessSnackbar(
                          context: context,
                          message: 'Ceps salvos deletados com sucesso',
                        ),
                      );
                    },
                    child: const Text('Deletar Ceps salvos'),
                  )
                ];
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset('assets/address-search.jpg'),
              ),
              SearchCepTextfield(
                error: error,
                controller: _controller,
                onSubmitted: (cep) => _bloc.add(CepEvent.loadCepInfo(cep)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tooltip(
                      message: 'Ver Salvos',
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/districts');
                          _bloc.add(const CepEvent.loadSavedDistricts());
                        },
                        child: const Icon(
                          Icons.save,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'Buscar cep',
                      child: ElevatedButton(
                        onPressed: () => _bloc.add(
                          CepEvent.loadCepInfo(
                            _controller.text,
                          ),
                        ),
                        child: const Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
