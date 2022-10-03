import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/data/datasources/api/search_cep_datasource.dart';
import 'package:busca_cep/features/data/datasources/local/hive_datasource.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';

class CepRepositoryImpl implements CepRepository {
  final HiveDatasource localDatasource;
  final SearchCepDatasource datasource;

  CepRepositoryImpl({
    required this.localDatasource,
    required this.datasource,
  });
  @override
  Either<Failure, List<CepEntity>> getSavedCeps() {
    return localDatasource.getSavedCeps();
  }

  @override
  Future<Either<Failure, bool>> saveCep(CepEntity cep) async {
    return localDatasource.saveCep(cep);
  }

  @override
  Future<Either<ServerException, CepEntity>> searchCep(String cep) async {
    return await datasource(cep);
  }
}
