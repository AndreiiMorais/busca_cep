import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';

abstract class GetSavedCepsUsecase {
  Future<List<CepEntity>> call();
}

class GetSavedCepsUsecaseImpl implements GetSavedCepsUsecase {
  final CepRepository repository;

  GetSavedCepsUsecaseImpl(this.repository);
  @override
  Future<List<CepEntity>> call() async {
    return repository.getSavedCeps();
  }
}
