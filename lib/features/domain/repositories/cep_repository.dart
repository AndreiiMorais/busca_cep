import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CepRepository {
  Future<Either<Failure, CepEntity>> searchCep(String cep);

  Future<List<CepEntity>> getSearchedCepsList();
}
