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
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

GetIt serviceLocator = GetIt.instance;

class Injector {
  static Future<void> init() async {
    await Hive.openBox<CepEntity>('cep');
    //Clients
    serviceLocator.registerLazySingleton<HttpClient>(() => HttpClientImpl());

    //Datasources
    serviceLocator.registerLazySingleton<HiveDatasource>(
      () => HiveDatasourceImpl(Hive.box('cep')),
    );
    serviceLocator.registerLazySingleton<SearchCepDatasource>(
      () => ViaCepDatasourceImpl(serviceLocator()),
    );

    //Repositories
    serviceLocator.registerLazySingleton<CepRepository>(
      () => CepRepositoryImpl(
        datasource: serviceLocator(),
        localDatasource: serviceLocator(),
      ),
    );

    //Usecases
    serviceLocator.registerLazySingleton<GetSavedCepsUsecase>(
      () => GetSavedCepsUsecaseImpl(serviceLocator()),
    );
    serviceLocator.registerLazySingleton<SaveCepUsecase>(
      () => SaveCepUsecaseImpl(serviceLocator()),
    );
    serviceLocator.registerLazySingleton<SearchCepUsecase>(
      () => SearchCepUsecaseImpl(serviceLocator()),
    );

    //Controllers
  }
}
