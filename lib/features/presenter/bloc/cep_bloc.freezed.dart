// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cep_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CepEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCepInfo value) loadCepInfo,
    required TResult Function(_SaveCep value) saveCep,
    required TResult Function(_LoadSavedDistricts value) loadSavedDistricts,
    required TResult Function(_LoadSavedCeps value) loadSavedCeps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CepEventCopyWith<$Res> {
  factory $CepEventCopyWith(CepEvent value, $Res Function(CepEvent) then) =
      _$CepEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CepEventCopyWithImpl<$Res> implements $CepEventCopyWith<$Res> {
  _$CepEventCopyWithImpl(this._value, this._then);

  final CepEvent _value;
  // ignore: unused_field
  final $Res Function(CepEvent) _then;
}

/// @nodoc
abstract class _$$_LoadCepInfoCopyWith<$Res> {
  factory _$$_LoadCepInfoCopyWith(
          _$_LoadCepInfo value, $Res Function(_$_LoadCepInfo) then) =
      __$$_LoadCepInfoCopyWithImpl<$Res>;
  $Res call({String cep});
}

/// @nodoc
class __$$_LoadCepInfoCopyWithImpl<$Res> extends _$CepEventCopyWithImpl<$Res>
    implements _$$_LoadCepInfoCopyWith<$Res> {
  __$$_LoadCepInfoCopyWithImpl(
      _$_LoadCepInfo _value, $Res Function(_$_LoadCepInfo) _then)
      : super(_value, (v) => _then(v as _$_LoadCepInfo));

  @override
  _$_LoadCepInfo get _value => super._value as _$_LoadCepInfo;

  @override
  $Res call({
    Object? cep = freezed,
  }) {
    return _then(_$_LoadCepInfo(
      cep == freezed
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadCepInfo implements _LoadCepInfo {
  const _$_LoadCepInfo(this.cep);

  @override
  final String cep;

  @override
  String toString() {
    return 'CepEvent.loadCepInfo(cep: $cep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCepInfo &&
            const DeepCollectionEquality().equals(other.cep, cep));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cep));

  @JsonKey(ignore: true)
  @override
  _$$_LoadCepInfoCopyWith<_$_LoadCepInfo> get copyWith =>
      __$$_LoadCepInfoCopyWithImpl<_$_LoadCepInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
  }) {
    return loadCepInfo(cep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
  }) {
    return loadCepInfo?.call(cep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (loadCepInfo != null) {
      return loadCepInfo(cep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCepInfo value) loadCepInfo,
    required TResult Function(_SaveCep value) saveCep,
    required TResult Function(_LoadSavedDistricts value) loadSavedDistricts,
    required TResult Function(_LoadSavedCeps value) loadSavedCeps,
  }) {
    return loadCepInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
  }) {
    return loadCepInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (loadCepInfo != null) {
      return loadCepInfo(this);
    }
    return orElse();
  }
}

abstract class _LoadCepInfo implements CepEvent {
  const factory _LoadCepInfo(final String cep) = _$_LoadCepInfo;

  String get cep;
  @JsonKey(ignore: true)
  _$$_LoadCepInfoCopyWith<_$_LoadCepInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCepCopyWith<$Res> {
  factory _$$_SaveCepCopyWith(
          _$_SaveCep value, $Res Function(_$_SaveCep) then) =
      __$$_SaveCepCopyWithImpl<$Res>;
  $Res call({CepEntity cep});
}

/// @nodoc
class __$$_SaveCepCopyWithImpl<$Res> extends _$CepEventCopyWithImpl<$Res>
    implements _$$_SaveCepCopyWith<$Res> {
  __$$_SaveCepCopyWithImpl(_$_SaveCep _value, $Res Function(_$_SaveCep) _then)
      : super(_value, (v) => _then(v as _$_SaveCep));

  @override
  _$_SaveCep get _value => super._value as _$_SaveCep;

  @override
  $Res call({
    Object? cep = freezed,
  }) {
    return _then(_$_SaveCep(
      cep == freezed
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as CepEntity,
    ));
  }
}

/// @nodoc

class _$_SaveCep implements _SaveCep {
  const _$_SaveCep(this.cep);

  @override
  final CepEntity cep;

  @override
  String toString() {
    return 'CepEvent.saveCep(cep: $cep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveCep &&
            const DeepCollectionEquality().equals(other.cep, cep));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cep));

  @JsonKey(ignore: true)
  @override
  _$$_SaveCepCopyWith<_$_SaveCep> get copyWith =>
      __$$_SaveCepCopyWithImpl<_$_SaveCep>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
  }) {
    return saveCep(cep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
  }) {
    return saveCep?.call(cep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (saveCep != null) {
      return saveCep(cep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCepInfo value) loadCepInfo,
    required TResult Function(_SaveCep value) saveCep,
    required TResult Function(_LoadSavedDistricts value) loadSavedDistricts,
    required TResult Function(_LoadSavedCeps value) loadSavedCeps,
  }) {
    return saveCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
  }) {
    return saveCep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (saveCep != null) {
      return saveCep(this);
    }
    return orElse();
  }
}

abstract class _SaveCep implements CepEvent {
  const factory _SaveCep(final CepEntity cep) = _$_SaveCep;

  CepEntity get cep;
  @JsonKey(ignore: true)
  _$$_SaveCepCopyWith<_$_SaveCep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSavedDistrictsCopyWith<$Res> {
  factory _$$_LoadSavedDistrictsCopyWith(_$_LoadSavedDistricts value,
          $Res Function(_$_LoadSavedDistricts) then) =
      __$$_LoadSavedDistrictsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSavedDistrictsCopyWithImpl<$Res>
    extends _$CepEventCopyWithImpl<$Res>
    implements _$$_LoadSavedDistrictsCopyWith<$Res> {
  __$$_LoadSavedDistrictsCopyWithImpl(
      _$_LoadSavedDistricts _value, $Res Function(_$_LoadSavedDistricts) _then)
      : super(_value, (v) => _then(v as _$_LoadSavedDistricts));

  @override
  _$_LoadSavedDistricts get _value => super._value as _$_LoadSavedDistricts;
}

/// @nodoc

class _$_LoadSavedDistricts implements _LoadSavedDistricts {
  const _$_LoadSavedDistricts();

  @override
  String toString() {
    return 'CepEvent.loadSavedDistricts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadSavedDistricts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
  }) {
    return loadSavedDistricts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
  }) {
    return loadSavedDistricts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (loadSavedDistricts != null) {
      return loadSavedDistricts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCepInfo value) loadCepInfo,
    required TResult Function(_SaveCep value) saveCep,
    required TResult Function(_LoadSavedDistricts value) loadSavedDistricts,
    required TResult Function(_LoadSavedCeps value) loadSavedCeps,
  }) {
    return loadSavedDistricts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
  }) {
    return loadSavedDistricts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (loadSavedDistricts != null) {
      return loadSavedDistricts(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedDistricts implements CepEvent {
  const factory _LoadSavedDistricts() = _$_LoadSavedDistricts;
}

/// @nodoc
abstract class _$$_LoadSavedCepsCopyWith<$Res> {
  factory _$$_LoadSavedCepsCopyWith(
          _$_LoadSavedCeps value, $Res Function(_$_LoadSavedCeps) then) =
      __$$_LoadSavedCepsCopyWithImpl<$Res>;
  $Res call({String district});
}

/// @nodoc
class __$$_LoadSavedCepsCopyWithImpl<$Res> extends _$CepEventCopyWithImpl<$Res>
    implements _$$_LoadSavedCepsCopyWith<$Res> {
  __$$_LoadSavedCepsCopyWithImpl(
      _$_LoadSavedCeps _value, $Res Function(_$_LoadSavedCeps) _then)
      : super(_value, (v) => _then(v as _$_LoadSavedCeps));

  @override
  _$_LoadSavedCeps get _value => super._value as _$_LoadSavedCeps;

  @override
  $Res call({
    Object? district = freezed,
  }) {
    return _then(_$_LoadSavedCeps(
      district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadSavedCeps implements _LoadSavedCeps {
  const _$_LoadSavedCeps(this.district);

  @override
  final String district;

  @override
  String toString() {
    return 'CepEvent.loadSavedCeps(district: $district)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSavedCeps &&
            const DeepCollectionEquality().equals(other.district, district));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(district));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSavedCepsCopyWith<_$_LoadSavedCeps> get copyWith =>
      __$$_LoadSavedCepsCopyWithImpl<_$_LoadSavedCeps>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
  }) {
    return loadSavedCeps(district);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
  }) {
    return loadSavedCeps?.call(district);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (loadSavedCeps != null) {
      return loadSavedCeps(district);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCepInfo value) loadCepInfo,
    required TResult Function(_SaveCep value) saveCep,
    required TResult Function(_LoadSavedDistricts value) loadSavedDistricts,
    required TResult Function(_LoadSavedCeps value) loadSavedCeps,
  }) {
    return loadSavedCeps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
  }) {
    return loadSavedCeps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
    required TResult orElse(),
  }) {
    if (loadSavedCeps != null) {
      return loadSavedCeps(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedCeps implements CepEvent {
  const factory _LoadSavedCeps(final String district) = _$_LoadSavedCeps;

  String get district;
  @JsonKey(ignore: true)
  _$$_LoadSavedCepsCopyWith<_$_LoadSavedCeps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CepState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CepStateCopyWith<$Res> {
  factory $CepStateCopyWith(CepState value, $Res Function(CepState) then) =
      _$CepStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CepStateCopyWithImpl<$Res> implements $CepStateCopyWith<$Res> {
  _$CepStateCopyWithImpl(this._value, this._then);

  final CepState _value;
  // ignore: unused_field
  final $Res Function(CepState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CepStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CepState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CepState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCepCopyWith<$Res> {
  factory _$$_LoadingCepCopyWith(
          _$_LoadingCep value, $Res Function(_$_LoadingCep) then) =
      __$$_LoadingCepCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCepCopyWithImpl<$Res> extends _$CepStateCopyWithImpl<$Res>
    implements _$$_LoadingCepCopyWith<$Res> {
  __$$_LoadingCepCopyWithImpl(
      _$_LoadingCep _value, $Res Function(_$_LoadingCep) _then)
      : super(_value, (v) => _then(v as _$_LoadingCep));

  @override
  _$_LoadingCep get _value => super._value as _$_LoadingCep;
}

/// @nodoc

class _$_LoadingCep implements _LoadingCep {
  const _$_LoadingCep();

  @override
  String toString() {
    return 'CepState.loadingCep()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingCep);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return loadingCep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return loadingCep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadingCep != null) {
      return loadingCep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return loadingCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return loadingCep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadingCep != null) {
      return loadingCep(this);
    }
    return orElse();
  }
}

abstract class _LoadingCep implements CepState {
  const factory _LoadingCep() = _$_LoadingCep;
}

/// @nodoc
abstract class _$$_LoadedCepCopyWith<$Res> {
  factory _$$_LoadedCepCopyWith(
          _$_LoadedCep value, $Res Function(_$_LoadedCep) then) =
      __$$_LoadedCepCopyWithImpl<$Res>;
  $Res call({CepEntity cep});
}

/// @nodoc
class __$$_LoadedCepCopyWithImpl<$Res> extends _$CepStateCopyWithImpl<$Res>
    implements _$$_LoadedCepCopyWith<$Res> {
  __$$_LoadedCepCopyWithImpl(
      _$_LoadedCep _value, $Res Function(_$_LoadedCep) _then)
      : super(_value, (v) => _then(v as _$_LoadedCep));

  @override
  _$_LoadedCep get _value => super._value as _$_LoadedCep;

  @override
  $Res call({
    Object? cep = freezed,
  }) {
    return _then(_$_LoadedCep(
      cep == freezed
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as CepEntity,
    ));
  }
}

/// @nodoc

class _$_LoadedCep implements _LoadedCep {
  const _$_LoadedCep(this.cep);

  @override
  final CepEntity cep;

  @override
  String toString() {
    return 'CepState.loadedCep(cep: $cep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedCep &&
            const DeepCollectionEquality().equals(other.cep, cep));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cep));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCepCopyWith<_$_LoadedCep> get copyWith =>
      __$$_LoadedCepCopyWithImpl<_$_LoadedCep>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return loadedCep(cep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return loadedCep?.call(cep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadedCep != null) {
      return loadedCep(cep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return loadedCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return loadedCep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadedCep != null) {
      return loadedCep(this);
    }
    return orElse();
  }
}

abstract class _LoadedCep implements CepState {
  const factory _LoadedCep(final CepEntity cep) = _$_LoadedCep;

  CepEntity get cep;
  @JsonKey(ignore: true)
  _$$_LoadedCepCopyWith<_$_LoadedCep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InexistentCepErrorCopyWith<$Res> {
  factory _$$_InexistentCepErrorCopyWith(_$_InexistentCepError value,
          $Res Function(_$_InexistentCepError) then) =
      __$$_InexistentCepErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InexistentCepErrorCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res>
    implements _$$_InexistentCepErrorCopyWith<$Res> {
  __$$_InexistentCepErrorCopyWithImpl(
      _$_InexistentCepError _value, $Res Function(_$_InexistentCepError) _then)
      : super(_value, (v) => _then(v as _$_InexistentCepError));

  @override
  _$_InexistentCepError get _value => super._value as _$_InexistentCepError;
}

/// @nodoc

class _$_InexistentCepError implements _InexistentCepError {
  const _$_InexistentCepError();

  @override
  String toString() {
    return 'CepState.inexistentCepError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InexistentCepError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return inexistentCepError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return inexistentCepError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (inexistentCepError != null) {
      return inexistentCepError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return inexistentCepError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return inexistentCepError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (inexistentCepError != null) {
      return inexistentCepError(this);
    }
    return orElse();
  }
}

abstract class _InexistentCepError implements CepState {
  const factory _InexistentCepError() = _$_InexistentCepError;
}

/// @nodoc
abstract class _$$_LoadingSavedDistrictsCopyWith<$Res> {
  factory _$$_LoadingSavedDistrictsCopyWith(_$_LoadingSavedDistricts value,
          $Res Function(_$_LoadingSavedDistricts) then) =
      __$$_LoadingSavedDistrictsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingSavedDistrictsCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res>
    implements _$$_LoadingSavedDistrictsCopyWith<$Res> {
  __$$_LoadingSavedDistrictsCopyWithImpl(_$_LoadingSavedDistricts _value,
      $Res Function(_$_LoadingSavedDistricts) _then)
      : super(_value, (v) => _then(v as _$_LoadingSavedDistricts));

  @override
  _$_LoadingSavedDistricts get _value =>
      super._value as _$_LoadingSavedDistricts;
}

/// @nodoc

class _$_LoadingSavedDistricts implements _LoadingSavedDistricts {
  const _$_LoadingSavedDistricts();

  @override
  String toString() {
    return 'CepState.loadingSavedDistricts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingSavedDistricts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return loadingSavedDistricts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return loadingSavedDistricts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadingSavedDistricts != null) {
      return loadingSavedDistricts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return loadingSavedDistricts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return loadingSavedDistricts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadingSavedDistricts != null) {
      return loadingSavedDistricts(this);
    }
    return orElse();
  }
}

abstract class _LoadingSavedDistricts implements CepState {
  const factory _LoadingSavedDistricts() = _$_LoadingSavedDistricts;
}

/// @nodoc
abstract class _$$_LoadedSavedDistrictsCopyWith<$Res> {
  factory _$$_LoadedSavedDistrictsCopyWith(_$_LoadedSavedDistricts value,
          $Res Function(_$_LoadedSavedDistricts) then) =
      __$$_LoadedSavedDistrictsCopyWithImpl<$Res>;
  $Res call({List<String> districts});
}

/// @nodoc
class __$$_LoadedSavedDistrictsCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res>
    implements _$$_LoadedSavedDistrictsCopyWith<$Res> {
  __$$_LoadedSavedDistrictsCopyWithImpl(_$_LoadedSavedDistricts _value,
      $Res Function(_$_LoadedSavedDistricts) _then)
      : super(_value, (v) => _then(v as _$_LoadedSavedDistricts));

  @override
  _$_LoadedSavedDistricts get _value => super._value as _$_LoadedSavedDistricts;

  @override
  $Res call({
    Object? districts = freezed,
  }) {
    return _then(_$_LoadedSavedDistricts(
      districts == freezed
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_LoadedSavedDistricts implements _LoadedSavedDistricts {
  const _$_LoadedSavedDistricts(final List<String> districts)
      : _districts = districts;

  final List<String> _districts;
  @override
  List<String> get districts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  @override
  String toString() {
    return 'CepState.loadedSavedDistricts(districts: $districts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedSavedDistricts &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_districts));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedSavedDistrictsCopyWith<_$_LoadedSavedDistricts> get copyWith =>
      __$$_LoadedSavedDistrictsCopyWithImpl<_$_LoadedSavedDistricts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return loadedSavedDistricts(districts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return loadedSavedDistricts?.call(districts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadedSavedDistricts != null) {
      return loadedSavedDistricts(districts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return loadedSavedDistricts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return loadedSavedDistricts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadedSavedDistricts != null) {
      return loadedSavedDistricts(this);
    }
    return orElse();
  }
}

abstract class _LoadedSavedDistricts implements CepState {
  const factory _LoadedSavedDistricts(final List<String> districts) =
      _$_LoadedSavedDistricts;

  List<String> get districts;
  @JsonKey(ignore: true)
  _$$_LoadedSavedDistrictsCopyWith<_$_LoadedSavedDistricts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCepsByDistrictCopyWith<$Res> {
  factory _$$_LoadingCepsByDistrictCopyWith(_$_LoadingCepsByDistrict value,
          $Res Function(_$_LoadingCepsByDistrict) then) =
      __$$_LoadingCepsByDistrictCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCepsByDistrictCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res>
    implements _$$_LoadingCepsByDistrictCopyWith<$Res> {
  __$$_LoadingCepsByDistrictCopyWithImpl(_$_LoadingCepsByDistrict _value,
      $Res Function(_$_LoadingCepsByDistrict) _then)
      : super(_value, (v) => _then(v as _$_LoadingCepsByDistrict));

  @override
  _$_LoadingCepsByDistrict get _value =>
      super._value as _$_LoadingCepsByDistrict;
}

/// @nodoc

class _$_LoadingCepsByDistrict implements _LoadingCepsByDistrict {
  const _$_LoadingCepsByDistrict();

  @override
  String toString() {
    return 'CepState.loadingCepsByDistrict()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingCepsByDistrict);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return loadingCepsByDistrict();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return loadingCepsByDistrict?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadingCepsByDistrict != null) {
      return loadingCepsByDistrict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return loadingCepsByDistrict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return loadingCepsByDistrict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadingCepsByDistrict != null) {
      return loadingCepsByDistrict(this);
    }
    return orElse();
  }
}

abstract class _LoadingCepsByDistrict implements CepState {
  const factory _LoadingCepsByDistrict() = _$_LoadingCepsByDistrict;
}

/// @nodoc
abstract class _$$_LoadedCepsByDistrictCopyWith<$Res> {
  factory _$$_LoadedCepsByDistrictCopyWith(_$_LoadedCepsByDistrict value,
          $Res Function(_$_LoadedCepsByDistrict) then) =
      __$$_LoadedCepsByDistrictCopyWithImpl<$Res>;
  $Res call({List<CepEntity> ceps});
}

/// @nodoc
class __$$_LoadedCepsByDistrictCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res>
    implements _$$_LoadedCepsByDistrictCopyWith<$Res> {
  __$$_LoadedCepsByDistrictCopyWithImpl(_$_LoadedCepsByDistrict _value,
      $Res Function(_$_LoadedCepsByDistrict) _then)
      : super(_value, (v) => _then(v as _$_LoadedCepsByDistrict));

  @override
  _$_LoadedCepsByDistrict get _value => super._value as _$_LoadedCepsByDistrict;

  @override
  $Res call({
    Object? ceps = freezed,
  }) {
    return _then(_$_LoadedCepsByDistrict(
      ceps == freezed
          ? _value._ceps
          : ceps // ignore: cast_nullable_to_non_nullable
              as List<CepEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadedCepsByDistrict implements _LoadedCepsByDistrict {
  const _$_LoadedCepsByDistrict(final List<CepEntity> ceps) : _ceps = ceps;

  final List<CepEntity> _ceps;
  @override
  List<CepEntity> get ceps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ceps);
  }

  @override
  String toString() {
    return 'CepState.loadedCepsByDistrict(ceps: $ceps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedCepsByDistrict &&
            const DeepCollectionEquality().equals(other._ceps, _ceps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ceps));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCepsByDistrictCopyWith<_$_LoadedCepsByDistrict> get copyWith =>
      __$$_LoadedCepsByDistrictCopyWithImpl<_$_LoadedCepsByDistrict>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return loadedCepsByDistrict(ceps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return loadedCepsByDistrict?.call(ceps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadedCepsByDistrict != null) {
      return loadedCepsByDistrict(ceps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return loadedCepsByDistrict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return loadedCepsByDistrict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (loadedCepsByDistrict != null) {
      return loadedCepsByDistrict(this);
    }
    return orElse();
  }
}

abstract class _LoadedCepsByDistrict implements CepState {
  const factory _LoadedCepsByDistrict(final List<CepEntity> ceps) =
      _$_LoadedCepsByDistrict;

  List<CepEntity> get ceps;
  @JsonKey(ignore: true)
  _$$_LoadedCepsByDistrictCopyWith<_$_LoadedCepsByDistrict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavingCepCopyWith<$Res> {
  factory _$$_SavingCepCopyWith(
          _$_SavingCep value, $Res Function(_$_SavingCep) then) =
      __$$_SavingCepCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavingCepCopyWithImpl<$Res> extends _$CepStateCopyWithImpl<$Res>
    implements _$$_SavingCepCopyWith<$Res> {
  __$$_SavingCepCopyWithImpl(
      _$_SavingCep _value, $Res Function(_$_SavingCep) _then)
      : super(_value, (v) => _then(v as _$_SavingCep));

  @override
  _$_SavingCep get _value => super._value as _$_SavingCep;
}

/// @nodoc

class _$_SavingCep implements _SavingCep {
  const _$_SavingCep();

  @override
  String toString() {
    return 'CepState.savingCep()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SavingCep);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return savingCep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return savingCep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (savingCep != null) {
      return savingCep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return savingCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return savingCep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (savingCep != null) {
      return savingCep(this);
    }
    return orElse();
  }
}

abstract class _SavingCep implements CepState {
  const factory _SavingCep() = _$_SavingCep;
}

/// @nodoc
abstract class _$$_ShowSuccessSnackbarCopyWith<$Res> {
  factory _$$_ShowSuccessSnackbarCopyWith(_$_ShowSuccessSnackbar value,
          $Res Function(_$_ShowSuccessSnackbar) then) =
      __$$_ShowSuccessSnackbarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowSuccessSnackbarCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res>
    implements _$$_ShowSuccessSnackbarCopyWith<$Res> {
  __$$_ShowSuccessSnackbarCopyWithImpl(_$_ShowSuccessSnackbar _value,
      $Res Function(_$_ShowSuccessSnackbar) _then)
      : super(_value, (v) => _then(v as _$_ShowSuccessSnackbar));

  @override
  _$_ShowSuccessSnackbar get _value => super._value as _$_ShowSuccessSnackbar;
}

/// @nodoc

class _$_ShowSuccessSnackbar implements _ShowSuccessSnackbar {
  const _$_ShowSuccessSnackbar();

  @override
  String toString() {
    return 'CepState.showSuccessSnackbar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowSuccessSnackbar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return showSuccessSnackbar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return showSuccessSnackbar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (showSuccessSnackbar != null) {
      return showSuccessSnackbar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return showSuccessSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return showSuccessSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (showSuccessSnackbar != null) {
      return showSuccessSnackbar(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccessSnackbar implements CepState {
  const factory _ShowSuccessSnackbar() = _$_ShowSuccessSnackbar;
}

/// @nodoc
abstract class _$$_ShowErrorSnackbarCopyWith<$Res> {
  factory _$$_ShowErrorSnackbarCopyWith(_$_ShowErrorSnackbar value,
          $Res Function(_$_ShowErrorSnackbar) then) =
      __$$_ShowErrorSnackbarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowErrorSnackbarCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res>
    implements _$$_ShowErrorSnackbarCopyWith<$Res> {
  __$$_ShowErrorSnackbarCopyWithImpl(
      _$_ShowErrorSnackbar _value, $Res Function(_$_ShowErrorSnackbar) _then)
      : super(_value, (v) => _then(v as _$_ShowErrorSnackbar));

  @override
  _$_ShowErrorSnackbar get _value => super._value as _$_ShowErrorSnackbar;
}

/// @nodoc

class _$_ShowErrorSnackbar implements _ShowErrorSnackbar {
  const _$_ShowErrorSnackbar();

  @override
  String toString() {
    return 'CepState.showErrorSnackbar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowErrorSnackbar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCep,
    required TResult Function(CepEntity cep) loadedCep,
    required TResult Function() inexistentCepError,
    required TResult Function() loadingSavedDistricts,
    required TResult Function(List<String> districts) loadedSavedDistricts,
    required TResult Function() loadingCepsByDistrict,
    required TResult Function(List<CepEntity> ceps) loadedCepsByDistrict,
    required TResult Function() savingCep,
    required TResult Function() showSuccessSnackbar,
    required TResult Function() showErrorSnackbar,
  }) {
    return showErrorSnackbar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
  }) {
    return showErrorSnackbar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCep,
    TResult Function(CepEntity cep)? loadedCep,
    TResult Function()? inexistentCepError,
    TResult Function()? loadingSavedDistricts,
    TResult Function(List<String> districts)? loadedSavedDistricts,
    TResult Function()? loadingCepsByDistrict,
    TResult Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult Function()? savingCep,
    TResult Function()? showSuccessSnackbar,
    TResult Function()? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (showErrorSnackbar != null) {
      return showErrorSnackbar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCep value) loadingCep,
    required TResult Function(_LoadedCep value) loadedCep,
    required TResult Function(_InexistentCepError value) inexistentCepError,
    required TResult Function(_LoadingSavedDistricts value)
        loadingSavedDistricts,
    required TResult Function(_LoadedSavedDistricts value) loadedSavedDistricts,
    required TResult Function(_LoadingCepsByDistrict value)
        loadingCepsByDistrict,
    required TResult Function(_LoadedCepsByDistrict value) loadedCepsByDistrict,
    required TResult Function(_SavingCep value) savingCep,
    required TResult Function(_ShowSuccessSnackbar value) showSuccessSnackbar,
    required TResult Function(_ShowErrorSnackbar value) showErrorSnackbar,
  }) {
    return showErrorSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
  }) {
    return showErrorSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCep value)? loadingCep,
    TResult Function(_LoadedCep value)? loadedCep,
    TResult Function(_InexistentCepError value)? inexistentCepError,
    TResult Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult Function(_SavingCep value)? savingCep,
    TResult Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    required TResult orElse(),
  }) {
    if (showErrorSnackbar != null) {
      return showErrorSnackbar(this);
    }
    return orElse();
  }
}

abstract class _ShowErrorSnackbar implements CepState {
  const factory _ShowErrorSnackbar() = _$_ShowErrorSnackbar;
}
