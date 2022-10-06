import 'package:busca_cep/core/clients/http_client.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/data/datasources/api/search_cep_datasource.dart';
import 'package:busca_cep/features/data/datasources/api/viacep_datasource_impl.dart';
import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../utils/mocks.dart';

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  late SearchCepDatasource datasource;
  late HttpClient client;

  setUp(() {
    client = MockHttpClient();
    datasource = ViaCepDatasourceImpl(client);
  });

  test(
    'Should call client.get with the correct url',
    () async {
      //Arrange
      when(() => client.get(any())).thenAnswer(
        (_) async => HttpResponse(
          data: Mocks.cepApiResponse,
          statusCode: 200,
        ),
      );

      //Act
      await datasource('99999999');

      //Assert
      verify(() => client.get(
            'https://viacep.com.br/ws/99999999/json/',
          )).called(1);
    },
  );
  test(
    'Should return a CepModel calling client.get once',
    () async {
      //Arrange
      when(() => client.get(any())).thenAnswer(
        (_) async => HttpResponse(
          data: Mocks.cepApiResponse,
          statusCode: 200,
        ),
      );

      //Act
      final result = await datasource('99999999');

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isA<CepEntity>());
      expect(result.fold(id, id), isA<CepModel>());
      verify(() => client.get(any())).called(1);
    },
  );

  test(
    "Should throw BadRequestException when the response contains the field 'erro'",
    () async {
      //Arrange
      when(() => client.get(any())).thenAnswer(
        (_) async =>
            HttpResponse(data: Mocks.cepBadRequestResponse, statusCode: 200),
      );

      //Act
      final result = await datasource('9999999');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<ServerException>());
      expect(result.fold(id, id), isA<NotFoundException>());
      verify(() => client.get(any())).called(1);
    },
  );

  test(
    "Should throw NotFoundException when the statusCode is different from 200",
    () async {
      //Arrange
      when(() => client.get(any())).thenAnswer(
        (_) async => HttpResponse(
          data: null,
          statusCode: 400,
        ),
      );

      //Act
      final result = await datasource('9999999');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<ServerException>());
      expect(result.fold(id, id), isA<BadRequestException>());
      verify(() => client.get(any())).called(1);
    },
  );

  test(
      'Should throw UnknownDatabaseException when the code unknown from the datasource',
      () async {
    //Arrange
    when(() => client.get(any())).thenAnswer(
      (_) async => HttpResponse(
        data: null,
        statusCode: 500,
      ),
    );

    //Act
    final result = await datasource('9999999');

    //Assert
    expect(result.isLeft(), isTrue);
    expect(result.fold(id, id), isA<ServerException>());
    expect(result.fold(id, id), isA<UnknownDatasourceException>());
    verify(() => client.get(any())).called(1);
  });
}
