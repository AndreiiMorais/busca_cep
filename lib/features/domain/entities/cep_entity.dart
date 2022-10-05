import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cep_entity.g.dart';

@HiveType(typeId: 0)
class CepEntity extends Equatable {
  @HiveField(0)
  final String cep;
  @HiveField(1)
  final String publicPlace;
  @HiveField(2)
  final String complement;
  @HiveField(3)
  final String district;
  @HiveField(4)
  final String city;
  @HiveField(5)
  final String uf;
  @HiveField(6)
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
