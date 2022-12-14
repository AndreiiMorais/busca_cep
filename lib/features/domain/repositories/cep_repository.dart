import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CepRepository {
  Future<Either<ServerException, CepEntity>> searchCep(String cep);

  Future<Either<Failure, bool>> saveCep(CepEntity cep);

  Either<Failure, List<CepEntity>> getSavedCeps();
}
