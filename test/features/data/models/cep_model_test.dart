import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Map<String, dynamic> json;
  late CepModel model;

  setUp(() {
    json = {
      'cep': '000000',
      'logradouro': 'Avenida',
      'complemento': 'casa',
      'bairro': 'Centro',
      'localidade': 'Agudo',
      'uf': 'RS',
      'ddd': '55',
    };

    model = const CepModel(
      cep: '000000',
      city: 'Agudo',
      complement: 'casa',
      ddd: '55',
      district: 'Centro',
      publicPlace: 'Avenida',
      uf: 'RS',
    );
  });

  test(
    "Should return a json when calling model.toJson",
    () {
      //Act
      final result = model.toJson();

      //Assert
      expect(result, isA<Map<String, dynamic>>());
      expect(result, equals(json));
    },
  );

  test(
    "Should return a CepModel when calling fromJson(json)",
    () {
      //Act
      final result = CepModel.fromJson(json);

      //Assert
      expect(result, isA<CepEntity>());
      expect(result, isA<CepModel>());
      expect(result, equals(model));
    },
  );
}
