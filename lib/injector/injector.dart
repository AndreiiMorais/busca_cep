import 'package:busca_cep/core/clients/http_client.dart';
import 'package:busca_cep/core/clients/http_client_impl.dart';
import 'package:busca_cep/features/data/datasources/api/search_cep_datasource.dart';
import 'package:busca_cep/features/data/datasources/api/viacep_datasource_impl.dart';
import 'package:busca_cep/features/data/datasources/local/hive_datasource.dart';
import 'package:busca_cep/features/data/datasources/local/hive_datasource_impl.dart';
import 'package:busca_cep/features/data/repositories/cep_repository_impl.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:busca_cep/features/domain/usecases/get_saved_ceps_usecase.dart';
import 'package:busca_cep/features/domain/usecases/save_cep_usecase.dart';
import 'package:busca_cep/features/domain/usecases/search_cep_usecase.dart';
import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

GetIt serviceLocator = GetIt.instance;

class Injector {
  static Future<void> init() async {
    //HiveAdapters
    Hive.registerAdapter(CepEntityAdapter());

    //HiveBoxes
    await Hive.openBox<CepEntity>('cep');
    serviceLocator.registerSingleton<Box<CepEntity>>(Hive.box('cep'));

    //Clients
    serviceLocator.registerFactory<HttpClient>(() => HttpClientImpl());

    //Datasources
    serviceLocator.registerFactory<HiveDatasource>(
      () => HiveDatasourceImpl(serviceLocator()),
    );
    serviceLocator.registerFactory<SearchCepDatasource>(
      () => ViaCepDatasourceImpl(serviceLocator()),
    );

    //Repositories
    serviceLocator.registerFactory<CepRepository>(
      () => CepRepositoryImpl(
        datasource: serviceLocator(),
        localDatasource: serviceLocator(),
      ),
    );

    //Usecases
    serviceLocator.registerFactory<GetSavedCepsUsecase>(
      () => GetSavedCepsUsecaseImpl(serviceLocator()),
    );
    serviceLocator.registerFactory<SaveCepUsecase>(
      () => SaveCepUsecaseImpl(serviceLocator()),
    );
    serviceLocator.registerFactory<SearchCepUsecase>(
      () => SearchCepUsecaseImpl(serviceLocator()),
    );

    //Controllers
    serviceLocator.registerSingleton<CepBloc>(CepBloc());
  }
}
