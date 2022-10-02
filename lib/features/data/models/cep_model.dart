import 'package:busca_cep/features/domain/entities/cep_entity.dart';

class CepModel extends CepEntity {
  const CepModel({
    required super.cep,
    required super.publicPlace,
    required super.complement,
    required super.district,
    required super.city,
    required super.uf,
    required super.ddd,
  });

  factory CepModel.fromJson(Map<String, dynamic> json) => CepModel(
        cep: json['cep'] as String,
        publicPlace: json['logradouro'] as String,
        complement: json['complemento'] as String,
        district: json['bairro'] as String,
        city: json['localidade'] as String,
        uf: json['uf'] as String,
        ddd: json['ddd'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'cep': cep,
        'logradouro': publicPlace,
        'complemento': complement,
        'bairro': district,
        'localidade': city,
        'uf': uf,
        'ddd': ddd,
      };
}
