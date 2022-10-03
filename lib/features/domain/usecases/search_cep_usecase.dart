import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';

abstract class SearchCepUsecase {
  Future<Either<ServerException, CepEntity>> call(String cep);
}

class SearchCepUsecaseImpl implements SearchCepUsecase {
  final CepRepository repository;

  SearchCepUsecaseImpl(this.repository);

  @override
  Future<Either<ServerException, CepEntity>> call(String cep) async {
    return await repository.searchCep(cep);
  }

}
