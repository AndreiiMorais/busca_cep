import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';

abstract class GetSavedCepsUsecase {
  Either<Failure, List<CepEntity>> call();
}

class GetSavedCepsUsecaseImpl implements GetSavedCepsUsecase {
  final CepRepository repository;

  GetSavedCepsUsecaseImpl(this.repository);
  @override
  Either<Failure, List<CepEntity>> call() {
    return repository.getSavedCeps();
  }
}
