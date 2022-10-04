// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cep_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CepEntityAdapter extends TypeAdapter<CepEntity> {
  @override
  final int typeId = 0;

  @override
  CepEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CepEntity(
      cep: fields[0] as String,
      publicPlace: fields[1] as String,
      complement: fields[2] as String,
      district: fields[3] as String,
      city: fields[4] as String,
      uf: fields[5] as String,
      ddd: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CepEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.cep)
      ..writeByte(1)
      ..write(obj.publicPlace)
      ..writeByte(2)
      ..write(obj.complement)
      ..writeByte(3)
      ..write(obj.district)
      ..writeByte(4)
      ..write(obj.city)
      ..writeByte(5)
      ..write(obj.uf)
      ..writeByte(6)
      ..write(obj.ddd);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CepEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
