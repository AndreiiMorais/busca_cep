import 'dart:convert';

import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/core/http_clients/http_client.dart';
import 'package:busca_cep/features/data/datasources/endpoints/viacep_endpoints.dart';
import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:busca_cep/features/data/repositories/search_cep_datasource.dart';

class ViaCepDatasourceImpl implements SearchCepDatasource {
  final HttpClient client;

  ViaCepDatasourceImpl(this.client);

  @override
  Future<CepModel> call(String cep) async {
    final response = await client.get(ViacepEndpoints.searchCep(cep));

    if (response.statusCode != 200) {
      throw _errors[response.statusCode] ??
          UnknownDatasourceException(
            message: 'code: ${response.statusCode}',
          );
    }

    final decodedResponse = jsonDecode(response.data);
    if (decodedResponse['erro'] != null) {
      throw _errors[response.statusCode]!;
    }

    return CepModel.fromJson(decodedResponse);
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
