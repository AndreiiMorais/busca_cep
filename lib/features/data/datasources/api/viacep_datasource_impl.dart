import 'dart:convert';

import 'package:busca_cep/core/clients/http_client.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/data/datasources/api/search_cep_datasource.dart';
import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:dartz/dartz.dart';

import 'endpoints/viacep_endpoints.dart';

class ViaCepDatasourceImpl implements SearchCepDatasource {
  final HttpClient client;

  ViaCepDatasourceImpl(this.client);

  @override
  Future<Either<ServerException, CepModel>> call(String cep) async {
    final response = await client.get(ViacepEndpoints.searchCep(cep));

    if (response.statusCode != 200) {
      return Left(
        _errors[response.statusCode] ??
            UnknownDatasourceException(
              message: 'code: ${response.statusCode}',
            ),
      );
    }

    final decodedResponse = jsonDecode(response.data);
    if (decodedResponse['erro'] != null) {
      return Left(_errors[response.statusCode]!) ;
    }

    return Right(CepModel.fromJson(decodedResponse));
  }

  final Map<int, ServerException> _errors = {
    200: NotFoundException(
      message: "the searched cep wasn't found on the servers",
    ),
    400: BadRequestException(
      message: 'the search must be with exactly eight characters',
    ),
  };
}
