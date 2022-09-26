import 'package:equatable/equatable.dart';

class CepEntity extends Equatable {
  final String cep;
  final String publicPlace;
  final String complement;
  final String district;
  final String city;
  final String uf;
  final String ddd;

  const CepEntity({
    required this.cep,
    required this.publicPlace,
    required this.complement,
    required this.district,
    required this.city,
    required this.uf,
    required this.ddd,
  });

  @override
  List<Object?> get props => [
        cep,
        publicPlace,
        district,
        city,
        uf,
      ];
}
