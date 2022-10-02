import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';

abstract class SaveCepUsecase {
  Future<Either<Failure, bool>> call(CepEntity cep);
}

class SaveCepUsecaseImpl implements SaveCepUsecase {
  final CepRepository repository;

  SaveCepUsecaseImpl(this.repository);
  @override
  Future<Either<Failure, bool>> call(CepEntity cep) async {
    return repository.saveCep(cep);
  }
}
