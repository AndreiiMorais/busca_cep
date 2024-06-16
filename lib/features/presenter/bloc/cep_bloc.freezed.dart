// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cep_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CepEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
    required TResult Function(CepEntity ceps) openInMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cep)? loadCepInfo,
    TResult? Function(CepEntity cep)? saveCep,
    TResult? Function()? loadSavedDistricts,
    TResult? Function(String district)? loadSavedCeps,
    TResult? Function(CepEntity ceps)? openInMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
    TResult Function(CepEntity ceps)? openInMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCepInfo value) loadCepInfo,
    required TResult Function(_SaveCep value) saveCep,
    required TResult Function(_LoadSavedDistricts value) loadSavedDistricts,
    required TResult Function(_LoadSavedCeps value) loadSavedCeps,
    required TResult Function(_OpenInMap value) openInMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCepInfo value)? loadCepInfo,
    TResult? Function(_SaveCep value)? saveCep,
    TResult? Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult? Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult? Function(_OpenInMap value)? openInMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult Function(_OpenInMap value)? openInMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CepEventCopyWith<$Res> {
  factory $CepEventCopyWith(CepEvent value, $Res Function(CepEvent) then) =
      _$CepEventCopyWithImpl<$Res, CepEvent>;
}

/// @nodoc
class _$CepEventCopyWithImpl<$Res, $Val extends CepEvent>
    implements $CepEventCopyWith<$Res> {
  _$CepEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCepInfoImplCopyWith<$Res> {
  factory _$$LoadCepInfoImplCopyWith(
          _$LoadCepInfoImpl value, $Res Function(_$LoadCepInfoImpl) then) =
      __$$LoadCepInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cep});
}

/// @nodoc
class __$$LoadCepInfoImplCopyWithImpl<$Res>
    extends _$CepEventCopyWithImpl<$Res, _$LoadCepInfoImpl>
    implements _$$LoadCepInfoImplCopyWith<$Res> {
  __$$LoadCepInfoImplCopyWithImpl(
      _$LoadCepInfoImpl _value, $Res Function(_$LoadCepInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cep = null,
  }) {
    return _then(_$LoadCepInfoImpl(
      null == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCepInfoImpl implements _LoadCepInfo {
  const _$LoadCepInfoImpl(this.cep);

  @override
  final String cep;

  @override
  String toString() {
    return 'CepEvent.loadCepInfo(cep: $cep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCepInfoImpl &&
            (identical(other.cep, cep) || other.cep == cep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCepInfoImplCopyWith<_$LoadCepInfoImpl> get copyWith =>
      __$$LoadCepInfoImplCopyWithImpl<_$LoadCepInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
    required TResult Function(CepEntity ceps) openInMap,
  }) {
    return loadCepInfo(cep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cep)? loadCepInfo,
    TResult? Function(CepEntity cep)? saveCep,
    TResult? Function()? loadSavedDistricts,
    TResult? Function(String district)? loadSavedCeps,
    TResult? Function(CepEntity ceps)? openInMap,
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
    TResult Function(CepEntity ceps)? openInMap,
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
    required TResult Function(_OpenInMap value) openInMap,
  }) {
    return loadCepInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCepInfo value)? loadCepInfo,
    TResult? Function(_SaveCep value)? saveCep,
    TResult? Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult? Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult? Function(_OpenInMap value)? openInMap,
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
    TResult Function(_OpenInMap value)? openInMap,
    required TResult orElse(),
  }) {
    if (loadCepInfo != null) {
      return loadCepInfo(this);
    }
    return orElse();
  }
}

abstract class _LoadCepInfo implements CepEvent {
  const factory _LoadCepInfo(final String cep) = _$LoadCepInfoImpl;

  String get cep;
  @JsonKey(ignore: true)
  _$$LoadCepInfoImplCopyWith<_$LoadCepInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCepImplCopyWith<$Res> {
  factory _$$SaveCepImplCopyWith(
          _$SaveCepImpl value, $Res Function(_$SaveCepImpl) then) =
      __$$SaveCepImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CepEntity cep});
}

/// @nodoc
class __$$SaveCepImplCopyWithImpl<$Res>
    extends _$CepEventCopyWithImpl<$Res, _$SaveCepImpl>
    implements _$$SaveCepImplCopyWith<$Res> {
  __$$SaveCepImplCopyWithImpl(
      _$SaveCepImpl _value, $Res Function(_$SaveCepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cep = null,
  }) {
    return _then(_$SaveCepImpl(
      null == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as CepEntity,
    ));
  }
}

/// @nodoc

class _$SaveCepImpl implements _SaveCep {
  const _$SaveCepImpl(this.cep);

  @override
  final CepEntity cep;

  @override
  String toString() {
    return 'CepEvent.saveCep(cep: $cep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCepImpl &&
            (identical(other.cep, cep) || other.cep == cep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCepImplCopyWith<_$SaveCepImpl> get copyWith =>
      __$$SaveCepImplCopyWithImpl<_$SaveCepImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
    required TResult Function(CepEntity ceps) openInMap,
  }) {
    return saveCep(cep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cep)? loadCepInfo,
    TResult? Function(CepEntity cep)? saveCep,
    TResult? Function()? loadSavedDistricts,
    TResult? Function(String district)? loadSavedCeps,
    TResult? Function(CepEntity ceps)? openInMap,
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
    TResult Function(CepEntity ceps)? openInMap,
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
    required TResult Function(_OpenInMap value) openInMap,
  }) {
    return saveCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCepInfo value)? loadCepInfo,
    TResult? Function(_SaveCep value)? saveCep,
    TResult? Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult? Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult? Function(_OpenInMap value)? openInMap,
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
    TResult Function(_OpenInMap value)? openInMap,
    required TResult orElse(),
  }) {
    if (saveCep != null) {
      return saveCep(this);
    }
    return orElse();
  }
}

abstract class _SaveCep implements CepEvent {
  const factory _SaveCep(final CepEntity cep) = _$SaveCepImpl;

  CepEntity get cep;
  @JsonKey(ignore: true)
  _$$SaveCepImplCopyWith<_$SaveCepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSavedDistrictsImplCopyWith<$Res> {
  factory _$$LoadSavedDistrictsImplCopyWith(_$LoadSavedDistrictsImpl value,
          $Res Function(_$LoadSavedDistrictsImpl) then) =
      __$$LoadSavedDistrictsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSavedDistrictsImplCopyWithImpl<$Res>
    extends _$CepEventCopyWithImpl<$Res, _$LoadSavedDistrictsImpl>
    implements _$$LoadSavedDistrictsImplCopyWith<$Res> {
  __$$LoadSavedDistrictsImplCopyWithImpl(_$LoadSavedDistrictsImpl _value,
      $Res Function(_$LoadSavedDistrictsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadSavedDistrictsImpl implements _LoadSavedDistricts {
  const _$LoadSavedDistrictsImpl();

  @override
  String toString() {
    return 'CepEvent.loadSavedDistricts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSavedDistrictsImpl);
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
    required TResult Function(CepEntity ceps) openInMap,
  }) {
    return loadSavedDistricts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cep)? loadCepInfo,
    TResult? Function(CepEntity cep)? saveCep,
    TResult? Function()? loadSavedDistricts,
    TResult? Function(String district)? loadSavedCeps,
    TResult? Function(CepEntity ceps)? openInMap,
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
    TResult Function(CepEntity ceps)? openInMap,
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
    required TResult Function(_OpenInMap value) openInMap,
  }) {
    return loadSavedDistricts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCepInfo value)? loadCepInfo,
    TResult? Function(_SaveCep value)? saveCep,
    TResult? Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult? Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult? Function(_OpenInMap value)? openInMap,
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
    TResult Function(_OpenInMap value)? openInMap,
    required TResult orElse(),
  }) {
    if (loadSavedDistricts != null) {
      return loadSavedDistricts(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedDistricts implements CepEvent {
  const factory _LoadSavedDistricts() = _$LoadSavedDistrictsImpl;
}

/// @nodoc
abstract class _$$LoadSavedCepsImplCopyWith<$Res> {
  factory _$$LoadSavedCepsImplCopyWith(
          _$LoadSavedCepsImpl value, $Res Function(_$LoadSavedCepsImpl) then) =
      __$$LoadSavedCepsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String district});
}

/// @nodoc
class __$$LoadSavedCepsImplCopyWithImpl<$Res>
    extends _$CepEventCopyWithImpl<$Res, _$LoadSavedCepsImpl>
    implements _$$LoadSavedCepsImplCopyWith<$Res> {
  __$$LoadSavedCepsImplCopyWithImpl(
      _$LoadSavedCepsImpl _value, $Res Function(_$LoadSavedCepsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
  }) {
    return _then(_$LoadSavedCepsImpl(
      null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSavedCepsImpl implements _LoadSavedCeps {
  const _$LoadSavedCepsImpl(this.district);

  @override
  final String district;

  @override
  String toString() {
    return 'CepEvent.loadSavedCeps(district: $district)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSavedCepsImpl &&
            (identical(other.district, district) ||
                other.district == district));
  }

  @override
  int get hashCode => Object.hash(runtimeType, district);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSavedCepsImplCopyWith<_$LoadSavedCepsImpl> get copyWith =>
      __$$LoadSavedCepsImplCopyWithImpl<_$LoadSavedCepsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
    required TResult Function(CepEntity ceps) openInMap,
  }) {
    return loadSavedCeps(district);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cep)? loadCepInfo,
    TResult? Function(CepEntity cep)? saveCep,
    TResult? Function()? loadSavedDistricts,
    TResult? Function(String district)? loadSavedCeps,
    TResult? Function(CepEntity ceps)? openInMap,
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
    TResult Function(CepEntity ceps)? openInMap,
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
    required TResult Function(_OpenInMap value) openInMap,
  }) {
    return loadSavedCeps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCepInfo value)? loadCepInfo,
    TResult? Function(_SaveCep value)? saveCep,
    TResult? Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult? Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult? Function(_OpenInMap value)? openInMap,
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
    TResult Function(_OpenInMap value)? openInMap,
    required TResult orElse(),
  }) {
    if (loadSavedCeps != null) {
      return loadSavedCeps(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedCeps implements CepEvent {
  const factory _LoadSavedCeps(final String district) = _$LoadSavedCepsImpl;

  String get district;
  @JsonKey(ignore: true)
  _$$LoadSavedCepsImplCopyWith<_$LoadSavedCepsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenInMapImplCopyWith<$Res> {
  factory _$$OpenInMapImplCopyWith(
          _$OpenInMapImpl value, $Res Function(_$OpenInMapImpl) then) =
      __$$OpenInMapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CepEntity ceps});
}

/// @nodoc
class __$$OpenInMapImplCopyWithImpl<$Res>
    extends _$CepEventCopyWithImpl<$Res, _$OpenInMapImpl>
    implements _$$OpenInMapImplCopyWith<$Res> {
  __$$OpenInMapImplCopyWithImpl(
      _$OpenInMapImpl _value, $Res Function(_$OpenInMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ceps = null,
  }) {
    return _then(_$OpenInMapImpl(
      null == ceps
          ? _value.ceps
          : ceps // ignore: cast_nullable_to_non_nullable
              as CepEntity,
    ));
  }
}

/// @nodoc

class _$OpenInMapImpl implements _OpenInMap {
  const _$OpenInMapImpl(this.ceps);

  @override
  final CepEntity ceps;

  @override
  String toString() {
    return 'CepEvent.openInMap(ceps: $ceps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenInMapImpl &&
            (identical(other.ceps, ceps) || other.ceps == ceps));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ceps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenInMapImplCopyWith<_$OpenInMapImpl> get copyWith =>
      __$$OpenInMapImplCopyWithImpl<_$OpenInMapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cep) loadCepInfo,
    required TResult Function(CepEntity cep) saveCep,
    required TResult Function() loadSavedDistricts,
    required TResult Function(String district) loadSavedCeps,
    required TResult Function(CepEntity ceps) openInMap,
  }) {
    return openInMap(ceps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cep)? loadCepInfo,
    TResult? Function(CepEntity cep)? saveCep,
    TResult? Function()? loadSavedDistricts,
    TResult? Function(String district)? loadSavedCeps,
    TResult? Function(CepEntity ceps)? openInMap,
  }) {
    return openInMap?.call(ceps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cep)? loadCepInfo,
    TResult Function(CepEntity cep)? saveCep,
    TResult Function()? loadSavedDistricts,
    TResult Function(String district)? loadSavedCeps,
    TResult Function(CepEntity ceps)? openInMap,
    required TResult orElse(),
  }) {
    if (openInMap != null) {
      return openInMap(ceps);
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
    required TResult Function(_OpenInMap value) openInMap,
  }) {
    return openInMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCepInfo value)? loadCepInfo,
    TResult? Function(_SaveCep value)? saveCep,
    TResult? Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult? Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult? Function(_OpenInMap value)? openInMap,
  }) {
    return openInMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCepInfo value)? loadCepInfo,
    TResult Function(_SaveCep value)? saveCep,
    TResult Function(_LoadSavedDistricts value)? loadSavedDistricts,
    TResult Function(_LoadSavedCeps value)? loadSavedCeps,
    TResult Function(_OpenInMap value)? openInMap,
    required TResult orElse(),
  }) {
    if (openInMap != null) {
      return openInMap(this);
    }
    return orElse();
  }
}

abstract class _OpenInMap implements CepEvent {
  const factory _OpenInMap(final CepEntity ceps) = _$OpenInMapImpl;

  CepEntity get ceps;
  @JsonKey(ignore: true)
  _$$OpenInMapImplCopyWith<_$OpenInMapImpl> get copyWith =>
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CepStateCopyWith<$Res> {
  factory $CepStateCopyWith(CepState value, $Res Function(CepState) then) =
      _$CepStateCopyWithImpl<$Res, CepState>;
}

/// @nodoc
class _$CepStateCopyWithImpl<$Res, $Val extends CepState>
    implements $CepStateCopyWith<$Res> {
  _$CepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CepState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CepState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingCepImplCopyWith<$Res> {
  factory _$$LoadingCepImplCopyWith(
          _$LoadingCepImpl value, $Res Function(_$LoadingCepImpl) then) =
      __$$LoadingCepImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCepImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$LoadingCepImpl>
    implements _$$LoadingCepImplCopyWith<$Res> {
  __$$LoadingCepImplCopyWithImpl(
      _$LoadingCepImpl _value, $Res Function(_$LoadingCepImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCepImpl implements _LoadingCep {
  const _$LoadingCepImpl();

  @override
  String toString() {
    return 'CepState.loadingCep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCepImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return loadingCep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return loadingCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (loadingCep != null) {
      return loadingCep(this);
    }
    return orElse();
  }
}

abstract class _LoadingCep implements CepState {
  const factory _LoadingCep() = _$LoadingCepImpl;
}

/// @nodoc
abstract class _$$LoadedCepImplCopyWith<$Res> {
  factory _$$LoadedCepImplCopyWith(
          _$LoadedCepImpl value, $Res Function(_$LoadedCepImpl) then) =
      __$$LoadedCepImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CepEntity cep});
}

/// @nodoc
class __$$LoadedCepImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$LoadedCepImpl>
    implements _$$LoadedCepImplCopyWith<$Res> {
  __$$LoadedCepImplCopyWithImpl(
      _$LoadedCepImpl _value, $Res Function(_$LoadedCepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cep = null,
  }) {
    return _then(_$LoadedCepImpl(
      null == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as CepEntity,
    ));
  }
}

/// @nodoc

class _$LoadedCepImpl implements _LoadedCep {
  const _$LoadedCepImpl(this.cep);

  @override
  final CepEntity cep;

  @override
  String toString() {
    return 'CepState.loadedCep(cep: $cep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCepImpl &&
            (identical(other.cep, cep) || other.cep == cep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCepImplCopyWith<_$LoadedCepImpl> get copyWith =>
      __$$LoadedCepImplCopyWithImpl<_$LoadedCepImpl>(this, _$identity);

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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return loadedCep(cep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return loadedCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (loadedCep != null) {
      return loadedCep(this);
    }
    return orElse();
  }
}

abstract class _LoadedCep implements CepState {
  const factory _LoadedCep(final CepEntity cep) = _$LoadedCepImpl;

  CepEntity get cep;
  @JsonKey(ignore: true)
  _$$LoadedCepImplCopyWith<_$LoadedCepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InexistentCepErrorImplCopyWith<$Res> {
  factory _$$InexistentCepErrorImplCopyWith(_$InexistentCepErrorImpl value,
          $Res Function(_$InexistentCepErrorImpl) then) =
      __$$InexistentCepErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InexistentCepErrorImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$InexistentCepErrorImpl>
    implements _$$InexistentCepErrorImplCopyWith<$Res> {
  __$$InexistentCepErrorImplCopyWithImpl(_$InexistentCepErrorImpl _value,
      $Res Function(_$InexistentCepErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InexistentCepErrorImpl implements _InexistentCepError {
  const _$InexistentCepErrorImpl();

  @override
  String toString() {
    return 'CepState.inexistentCepError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InexistentCepErrorImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return inexistentCepError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return inexistentCepError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (inexistentCepError != null) {
      return inexistentCepError(this);
    }
    return orElse();
  }
}

abstract class _InexistentCepError implements CepState {
  const factory _InexistentCepError() = _$InexistentCepErrorImpl;
}

/// @nodoc
abstract class _$$LoadingSavedDistrictsImplCopyWith<$Res> {
  factory _$$LoadingSavedDistrictsImplCopyWith(
          _$LoadingSavedDistrictsImpl value,
          $Res Function(_$LoadingSavedDistrictsImpl) then) =
      __$$LoadingSavedDistrictsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSavedDistrictsImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$LoadingSavedDistrictsImpl>
    implements _$$LoadingSavedDistrictsImplCopyWith<$Res> {
  __$$LoadingSavedDistrictsImplCopyWithImpl(_$LoadingSavedDistrictsImpl _value,
      $Res Function(_$LoadingSavedDistrictsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSavedDistrictsImpl implements _LoadingSavedDistricts {
  const _$LoadingSavedDistrictsImpl();

  @override
  String toString() {
    return 'CepState.loadingSavedDistricts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSavedDistrictsImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return loadingSavedDistricts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return loadingSavedDistricts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (loadingSavedDistricts != null) {
      return loadingSavedDistricts(this);
    }
    return orElse();
  }
}

abstract class _LoadingSavedDistricts implements CepState {
  const factory _LoadingSavedDistricts() = _$LoadingSavedDistrictsImpl;
}

/// @nodoc
abstract class _$$LoadedSavedDistrictsImplCopyWith<$Res> {
  factory _$$LoadedSavedDistrictsImplCopyWith(_$LoadedSavedDistrictsImpl value,
          $Res Function(_$LoadedSavedDistrictsImpl) then) =
      __$$LoadedSavedDistrictsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> districts});
}

/// @nodoc
class __$$LoadedSavedDistrictsImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$LoadedSavedDistrictsImpl>
    implements _$$LoadedSavedDistrictsImplCopyWith<$Res> {
  __$$LoadedSavedDistrictsImplCopyWithImpl(_$LoadedSavedDistrictsImpl _value,
      $Res Function(_$LoadedSavedDistrictsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districts = null,
  }) {
    return _then(_$LoadedSavedDistrictsImpl(
      null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LoadedSavedDistrictsImpl implements _LoadedSavedDistricts {
  const _$LoadedSavedDistrictsImpl(final List<String> districts)
      : _districts = districts;

  final List<String> _districts;
  @override
  List<String> get districts {
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  @override
  String toString() {
    return 'CepState.loadedSavedDistricts(districts: $districts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSavedDistrictsImpl &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_districts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSavedDistrictsImplCopyWith<_$LoadedSavedDistrictsImpl>
      get copyWith =>
          __$$LoadedSavedDistrictsImplCopyWithImpl<_$LoadedSavedDistrictsImpl>(
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return loadedSavedDistricts(districts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return loadedSavedDistricts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
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
      _$LoadedSavedDistrictsImpl;

  List<String> get districts;
  @JsonKey(ignore: true)
  _$$LoadedSavedDistrictsImplCopyWith<_$LoadedSavedDistrictsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCepsByDistrictImplCopyWith<$Res> {
  factory _$$LoadingCepsByDistrictImplCopyWith(
          _$LoadingCepsByDistrictImpl value,
          $Res Function(_$LoadingCepsByDistrictImpl) then) =
      __$$LoadingCepsByDistrictImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCepsByDistrictImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$LoadingCepsByDistrictImpl>
    implements _$$LoadingCepsByDistrictImplCopyWith<$Res> {
  __$$LoadingCepsByDistrictImplCopyWithImpl(_$LoadingCepsByDistrictImpl _value,
      $Res Function(_$LoadingCepsByDistrictImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCepsByDistrictImpl implements _LoadingCepsByDistrict {
  const _$LoadingCepsByDistrictImpl();

  @override
  String toString() {
    return 'CepState.loadingCepsByDistrict()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCepsByDistrictImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return loadingCepsByDistrict();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return loadingCepsByDistrict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (loadingCepsByDistrict != null) {
      return loadingCepsByDistrict(this);
    }
    return orElse();
  }
}

abstract class _LoadingCepsByDistrict implements CepState {
  const factory _LoadingCepsByDistrict() = _$LoadingCepsByDistrictImpl;
}

/// @nodoc
abstract class _$$LoadedCepsByDistrictImplCopyWith<$Res> {
  factory _$$LoadedCepsByDistrictImplCopyWith(_$LoadedCepsByDistrictImpl value,
          $Res Function(_$LoadedCepsByDistrictImpl) then) =
      __$$LoadedCepsByDistrictImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CepEntity> ceps});
}

/// @nodoc
class __$$LoadedCepsByDistrictImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$LoadedCepsByDistrictImpl>
    implements _$$LoadedCepsByDistrictImplCopyWith<$Res> {
  __$$LoadedCepsByDistrictImplCopyWithImpl(_$LoadedCepsByDistrictImpl _value,
      $Res Function(_$LoadedCepsByDistrictImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ceps = null,
  }) {
    return _then(_$LoadedCepsByDistrictImpl(
      null == ceps
          ? _value._ceps
          : ceps // ignore: cast_nullable_to_non_nullable
              as List<CepEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedCepsByDistrictImpl implements _LoadedCepsByDistrict {
  const _$LoadedCepsByDistrictImpl(final List<CepEntity> ceps) : _ceps = ceps;

  final List<CepEntity> _ceps;
  @override
  List<CepEntity> get ceps {
    if (_ceps is EqualUnmodifiableListView) return _ceps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ceps);
  }

  @override
  String toString() {
    return 'CepState.loadedCepsByDistrict(ceps: $ceps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCepsByDistrictImpl &&
            const DeepCollectionEquality().equals(other._ceps, _ceps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ceps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCepsByDistrictImplCopyWith<_$LoadedCepsByDistrictImpl>
      get copyWith =>
          __$$LoadedCepsByDistrictImplCopyWithImpl<_$LoadedCepsByDistrictImpl>(
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return loadedCepsByDistrict(ceps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return loadedCepsByDistrict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
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
      _$LoadedCepsByDistrictImpl;

  List<CepEntity> get ceps;
  @JsonKey(ignore: true)
  _$$LoadedCepsByDistrictImplCopyWith<_$LoadedCepsByDistrictImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavingCepImplCopyWith<$Res> {
  factory _$$SavingCepImplCopyWith(
          _$SavingCepImpl value, $Res Function(_$SavingCepImpl) then) =
      __$$SavingCepImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavingCepImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$SavingCepImpl>
    implements _$$SavingCepImplCopyWith<$Res> {
  __$$SavingCepImplCopyWithImpl(
      _$SavingCepImpl _value, $Res Function(_$SavingCepImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavingCepImpl implements _SavingCep {
  const _$SavingCepImpl();

  @override
  String toString() {
    return 'CepState.savingCep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavingCepImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return savingCep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return savingCep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (savingCep != null) {
      return savingCep(this);
    }
    return orElse();
  }
}

abstract class _SavingCep implements CepState {
  const factory _SavingCep() = _$SavingCepImpl;
}

/// @nodoc
abstract class _$$ShowSuccessSnackbarImplCopyWith<$Res> {
  factory _$$ShowSuccessSnackbarImplCopyWith(_$ShowSuccessSnackbarImpl value,
          $Res Function(_$ShowSuccessSnackbarImpl) then) =
      __$$ShowSuccessSnackbarImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowSuccessSnackbarImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$ShowSuccessSnackbarImpl>
    implements _$$ShowSuccessSnackbarImplCopyWith<$Res> {
  __$$ShowSuccessSnackbarImplCopyWithImpl(_$ShowSuccessSnackbarImpl _value,
      $Res Function(_$ShowSuccessSnackbarImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowSuccessSnackbarImpl implements _ShowSuccessSnackbar {
  const _$ShowSuccessSnackbarImpl();

  @override
  String toString() {
    return 'CepState.showSuccessSnackbar()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSuccessSnackbarImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return showSuccessSnackbar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return showSuccessSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (showSuccessSnackbar != null) {
      return showSuccessSnackbar(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccessSnackbar implements CepState {
  const factory _ShowSuccessSnackbar() = _$ShowSuccessSnackbarImpl;
}

/// @nodoc
abstract class _$$ShowErrorSnackbarImplCopyWith<$Res> {
  factory _$$ShowErrorSnackbarImplCopyWith(_$ShowErrorSnackbarImpl value,
          $Res Function(_$ShowErrorSnackbarImpl) then) =
      __$$ShowErrorSnackbarImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowErrorSnackbarImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$ShowErrorSnackbarImpl>
    implements _$$ShowErrorSnackbarImplCopyWith<$Res> {
  __$$ShowErrorSnackbarImplCopyWithImpl(_$ShowErrorSnackbarImpl _value,
      $Res Function(_$ShowErrorSnackbarImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowErrorSnackbarImpl implements _ShowErrorSnackbar {
  const _$ShowErrorSnackbarImpl();

  @override
  String toString() {
    return 'CepState.showErrorSnackbar()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowErrorSnackbarImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return showErrorSnackbar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return showErrorSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (showErrorSnackbar != null) {
      return showErrorSnackbar(this);
    }
    return orElse();
  }
}

abstract class _ShowErrorSnackbar implements CepState {
  const factory _ShowErrorSnackbar() = _$ShowErrorSnackbarImpl;
}

/// @nodoc
abstract class _$$LoadingMapImplCopyWith<$Res> {
  factory _$$LoadingMapImplCopyWith(
          _$LoadingMapImpl value, $Res Function(_$LoadingMapImpl) then) =
      __$$LoadingMapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMapImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$LoadingMapImpl>
    implements _$$LoadingMapImplCopyWith<$Res> {
  __$$LoadingMapImplCopyWithImpl(
      _$LoadingMapImpl _value, $Res Function(_$LoadingMapImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMapImpl implements _LoadingMap {
  const _$LoadingMapImpl();

  @override
  String toString() {
    return 'CepState.loadingMap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMapImpl);
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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return loadingMap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
  }) {
    return loadingMap?.call();
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
    required TResult orElse(),
  }) {
    if (loadingMap != null) {
      return loadingMap();
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return loadingMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
  }) {
    return loadingMap?.call(this);
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (loadingMap != null) {
      return loadingMap(this);
    }
    return orElse();
  }
}

abstract class _LoadingMap implements CepState {
  const factory _LoadingMap() = _$LoadingMapImpl;
}

/// @nodoc
abstract class _$$MapLoadedImplCopyWith<$Res> {
  factory _$$MapLoadedImplCopyWith(
          _$MapLoadedImpl value, $Res Function(_$MapLoadedImpl) then) =
      __$$MapLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng position});
}

/// @nodoc
class __$$MapLoadedImplCopyWithImpl<$Res>
    extends _$CepStateCopyWithImpl<$Res, _$MapLoadedImpl>
    implements _$$MapLoadedImplCopyWith<$Res> {
  __$$MapLoadedImplCopyWithImpl(
      _$MapLoadedImpl _value, $Res Function(_$MapLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$MapLoadedImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$MapLoadedImpl implements _MapLoaded {
  const _$MapLoadedImpl(this.position);

  @override
  final LatLng position;

  @override
  String toString() {
    return 'CepState.mapLoaded(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapLoadedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapLoadedImplCopyWith<_$MapLoadedImpl> get copyWith =>
      __$$MapLoadedImplCopyWithImpl<_$MapLoadedImpl>(this, _$identity);

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
    required TResult Function() loadingMap,
    required TResult Function(LatLng position) mapLoaded,
  }) {
    return mapLoaded(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCep,
    TResult? Function(CepEntity cep)? loadedCep,
    TResult? Function()? inexistentCepError,
    TResult? Function()? loadingSavedDistricts,
    TResult? Function(List<String> districts)? loadedSavedDistricts,
    TResult? Function()? loadingCepsByDistrict,
    TResult? Function(List<CepEntity> ceps)? loadedCepsByDistrict,
    TResult? Function()? savingCep,
    TResult? Function()? showSuccessSnackbar,
    TResult? Function()? showErrorSnackbar,
    TResult? Function()? loadingMap,
    TResult? Function(LatLng position)? mapLoaded,
  }) {
    return mapLoaded?.call(position);
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
    TResult Function()? loadingMap,
    TResult Function(LatLng position)? mapLoaded,
    required TResult orElse(),
  }) {
    if (mapLoaded != null) {
      return mapLoaded(position);
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
    required TResult Function(_LoadingMap value) loadingMap,
    required TResult Function(_MapLoaded value) mapLoaded,
  }) {
    return mapLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCep value)? loadingCep,
    TResult? Function(_LoadedCep value)? loadedCep,
    TResult? Function(_InexistentCepError value)? inexistentCepError,
    TResult? Function(_LoadingSavedDistricts value)? loadingSavedDistricts,
    TResult? Function(_LoadedSavedDistricts value)? loadedSavedDistricts,
    TResult? Function(_LoadingCepsByDistrict value)? loadingCepsByDistrict,
    TResult? Function(_LoadedCepsByDistrict value)? loadedCepsByDistrict,
    TResult? Function(_SavingCep value)? savingCep,
    TResult? Function(_ShowSuccessSnackbar value)? showSuccessSnackbar,
    TResult? Function(_ShowErrorSnackbar value)? showErrorSnackbar,
    TResult? Function(_LoadingMap value)? loadingMap,
    TResult? Function(_MapLoaded value)? mapLoaded,
  }) {
    return mapLoaded?.call(this);
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
    TResult Function(_LoadingMap value)? loadingMap,
    TResult Function(_MapLoaded value)? mapLoaded,
    required TResult orElse(),
  }) {
    if (mapLoaded != null) {
      return mapLoaded(this);
    }
    return orElse();
  }
}

abstract class _MapLoaded implements CepState {
  const factory _MapLoaded(final LatLng position) = _$MapLoadedImpl;

  LatLng get position;
  @JsonKey(ignore: true)
  _$$MapLoadedImplCopyWith<_$MapLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
