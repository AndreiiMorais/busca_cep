part of 'cep_bloc.dart';

@freezed
class CepState with _$CepState {
  const factory CepState.initial() = _Initial;
  const factory CepState.loadingCep() = _LoadingCep;
  const factory CepState.loadedCep(CepEntity cep) = _LoadedCep;
  const factory CepState.inexistentCepError() = _InexistentCepError;
  const factory CepState.loadingSavedDistricts() = _LoadingSavedDistricts;
  const factory CepState.loadedSavedDistricts(List<String> districts) =
      _LoadedSavedDistricts;
  const factory CepState.loadingCepsByDistrict() = _LoadingCepsByDistrict;
  const factory CepState.loadedCepsByDistrict(List<CepEntity> ceps) =
      _LoadedCepsByDistrict;
  const factory CepState.savingCep() = _SavingCep;
  const factory CepState.showSuccessSnackbar() = _ShowSuccessSnackbar;
  const factory CepState.showErrorSnackbar() = _ShowErrorSnackbar;
  const factory CepState.loadingMap() = _LoadingMap;
  const factory CepState.mapLoaded(LatLng position) = _MapLoaded;
  
}
