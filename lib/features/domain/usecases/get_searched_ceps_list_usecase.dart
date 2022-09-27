import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';

abstract class GetSearchedCepsListUsecase {
  Future<List<CepEntity>> call();
}

class GetSearchedCepsListUsecaseImpl implements GetSearchedCepsListUsecase {
  final CepRepository repository;

  GetSearchedCepsListUsecaseImpl(this.repository);
  @override
  Future<List<CepEntity>> call() async {
    return await repository.getSearchedCepsList();
  }
}
