import 'package:busca_cep/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class DeleteCepUsecase {
  Future<Either<void, Failure>> call(String cep);
}
