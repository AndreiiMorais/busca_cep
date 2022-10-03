import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchCepDatasource {
  Future<Either<ServerException,CepModel>> call(String cep);
}
