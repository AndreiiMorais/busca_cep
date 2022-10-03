import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/data/datasources/local/hive_datasource.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatasourceImpl implements HiveDatasource {
  final Box<CepEntity> box;

  HiveDatasourceImpl(this.box);

  @override
  Future<Either<Failure, bool>> saveCep(CepEntity cep) async{
    if (box.containsKey(cep.cep)) {
      return const Left(DuplicatedKeyFailure());
    }
    await box.put(cep.cep, cep);
    return const Right(true);
  }

  @override
  Either<Failure, List<CepEntity>> getSavedCeps() {
    if (!box.isOpen) {
      return const Left(ClosedHiveBoxFailure());
    }
    return Right(box.values.toList());
  }
}
