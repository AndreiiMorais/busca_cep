import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';

abstract class SearchCepUsecase {
  Future<Either<Failure, CepEntity>> call(String cep);
}

class SearchCepUsecaseImpl implements SearchCepUsecase {
  final CepRepository repository;

  SearchCepUsecaseImpl(this.repository);

  @override
  Future<Either<Failure, CepEntity>> call(String cep) async {
    if (isNotNumericOnly(cep)) return Left(BadInputFailure());
    if (isNotCorrectLength(cep)) return Left(CepLengthFailure());
    return await repository.searchCep(cep);
  }

  bool isNotCorrectLength(String cep) {
    return cep.length != 8;
  }

  bool isNotNumericOnly(String cep) {
    final regExp = RegExp(r'^[0-9]+$');
    return !regExp.hasMatch(cep);
  }
}
