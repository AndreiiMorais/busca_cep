part of 'cep_bloc.dart';

@freezed
class CepEvent with _$CepEvent {
  const factory CepEvent.loadCepInfo(String cep) = _LoadCepInfo;
  const factory CepEvent.saveCep(CepEntity cep) = _SaveCep;
  const factory CepEvent.loadSavedDistricts() = _LoadSavedDistricts;
  const factory CepEvent.loadSavedCeps(String district) = _LoadSavedCeps;
}