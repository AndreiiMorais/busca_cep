import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/usecases/get_saved_ceps_usecase.dart';
import 'package:busca_cep/features/domain/usecases/save_cep_usecase.dart';
import 'package:busca_cep/features/domain/usecases/search_cep_usecase.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'cep_bloc.freezed.dart';
part 'cep_event.dart';
part 'cep_state.dart';

const cepWithoutDistrict = 'Ceps sem localidade';

class CepBloc extends Bloc<CepEvent, CepState> {
  final SearchCepUsecase searchCepUsecase = serviceLocator();
  final SaveCepUsecase saveCepUsecase = serviceLocator();
  final GetSavedCepsUsecase getSavedCepsUsecase = serviceLocator();
  CepBloc() : super(const _Initial()) {
    on<_LoadCepInfo>((event, emit) => _onLoadCepInfoEvent(event, emit));
    on<_SaveCep>((event, emit) => _onSaveCepEvent(event, emit));
    on<_LoadSavedDistricts>(
      (event, emit) => _onLoadSavedDistricts(
        event,
        emit,
      ),
    );
    on<_LoadSavedCeps>((event, emit) => _onLoadSavedCeps(event, emit));
    on<_OpenInMap>((event, emit) => _onOpenInMapEvent(event, emit));
  }

  void _onLoadCepInfoEvent(
    _LoadCepInfo event,
    Emitter<CepState> emit,
  ) async {
    emit(const _LoadingCep());
    final result = await searchCepUsecase(event.cep);
    result.fold(
      (error) {
        if (error is NotFoundException) {
          emit(const _InexistentCepError());
        } else {
          emit(const _ShowErrorSnackbar());
        }
      },
      (success) => emit(_LoadedCep(success)),
    );
  }

  void _onSaveCepEvent(
    _SaveCep event,
    Emitter<CepState> emit,
  ) async {
    emit(const _SavingCep());
    final result = await saveCepUsecase(event.cep);
    result.fold(
      (error) => emit(const _ShowErrorSnackbar()),
      (success) => emit(const _ShowSuccessSnackbar()),
    );
  }

  void _onLoadSavedDistricts(
    _LoadSavedDistricts event,
    Emitter<CepState> emit,
  ) async {
    emit(const _LoadingSavedDistricts());
    final result = getSavedCepsUsecase();
    final districts = <String>[];
    result.fold(
      (error) => emit(const _ShowErrorSnackbar()),
      (ceps) {
        ceps.map((e) {
          if (e.district.isEmpty && !districts.contains(cepWithoutDistrict)) {
            districts.add(cepWithoutDistrict);
          }
          if (!districts.contains(e.district) && e.district.isNotEmpty) {
            districts.add(e.district);
          }
        }).toList();
      },
    );
    emit(_LoadedSavedDistricts(districts));
    districts.sort((a, b) => a.length.compareTo(b.length));
  }

  void _onLoadSavedCeps(
    _LoadSavedCeps event,
    Emitter<CepState> emit,
  ) async {
    emit(const _LoadingCepsByDistrict());
    final result = getSavedCepsUsecase();
    final cepsByDistrict = <CepEntity>[];
    result.fold(
      (error) => emit(const _ShowErrorSnackbar()),
      (ceps) => ceps.map(
        (cep) {
          if (cep.district == event.district) {
            cepsByDistrict.add(cep);
          }
          if (event.district == cepWithoutDistrict && cep.district.isEmpty) {
            cepsByDistrict.add(cep);
          }
        },
      ).toList(),
    );
    emit(_LoadedCepsByDistrict(cepsByDistrict));
  }

  void _onOpenInMapEvent(_OpenInMap event, Emitter<CepState> emit) async {
    emit(const _LoadingMap());
    final location = await locationFromAddress(
      event.ceps.cep,
      localeIdentifier: 'pt_BR',
    );
    final position = LatLng(
      location.first.latitude,
      location.first.longitude,
    );
    emit(_MapLoaded(position));
  }
}
