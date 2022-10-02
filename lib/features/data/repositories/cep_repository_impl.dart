import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/data/repositories/search_cep_datasource.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CepRepositoryImpl implements CepRepository {
  final Box<CepEntity> box;
  final SearchCepDatasource datasource;

  CepRepositoryImpl({
    required this.box,
    required this.datasource,
  });
  @override
  List<CepEntity> getSavedCeps() {
    return box.values.toList();
  }

  @override
  Future<Either<Failure, bool>> saveCep(CepEntity cep) async {
    if (box.containsKey(cep.cep)) {
      return const Left(DuplicatedKeyFailure());
    }
    await box.put(cep.cep, cep);
    return const Right(true);
  }

  @override
  Future<Either<Failure, CepEntity>> searchCep(String cep) async {
    try {
      final result = await datasource(cep);
      return Right(result);
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(message: e.message));
    } on BadRequestException catch (e) {
      return Left(BadInputFailure(message: e.message));
    } on Exception {
      return const Left(UnknownDatasourceFailure());
    }
  }
}
