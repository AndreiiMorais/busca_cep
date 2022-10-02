import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/core/http_clients/http_client.dart';
import 'package:busca_cep/features/data/datasources/viacep_datasource_impl.dart';
import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:busca_cep/features/data/repositories/search_cep_datasource.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils/mock_constants.dart';

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
          data: MockConstants.cepApiResponse,
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
          data: MockConstants.cepApiResponse,
          statusCode: 200,
        ),
      );

      //Act
      final result = await datasource('99999999');

      //Assert
      expect(result, isA<CepEntity>());
      expect(result, isA<CepModel>());
      verify(() => client.get(any())).called(1);
    },
  );

  test(
    "Should throw BadRequestException when the response contains the field 'erro'",
    () async {
      //Arrange
      when(() => client.get(any())).thenAnswer(
        (_) async => HttpResponse(
            data: MockConstants.cepBadRequestResponse, statusCode: 200),
      );

      //Assert
      await expectLater(
        datasource('99999999'),
        throwsA(isA<BadRequestException>()),
      );
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

      //Assert
      await expectLater(datasource('any'), throwsA(isA<NotFoundException>()));
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

    //Assert
    await expectLater(
      datasource('any'),
      throwsA(isA<UnknownDatasourceException>()),
    );
    verify(() => client.get(any())).called(1);
  });
}
