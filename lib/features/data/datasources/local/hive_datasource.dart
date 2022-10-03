import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HiveDatasource {
  Either<Failure,List<CepEntity>> getSavedCeps();
  Future<Either<Failure, bool>> saveCep(CepEntity cep);
}
