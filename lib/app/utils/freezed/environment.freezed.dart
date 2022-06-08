// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Environment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() local,
    required TResult Function() prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_Prod value) prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res> implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  final Environment _value;
  // ignore: unused_field
  final $Res Function(Environment) _then;
}

/// @nodoc
abstract class _$LocalCopyWith<$Res> {
  factory _$LocalCopyWith(_Local value, $Res Function(_Local) then) =
      __$LocalCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocalCopyWithImpl<$Res> extends _$EnvironmentCopyWithImpl<$Res>
    implements _$LocalCopyWith<$Res> {
  __$LocalCopyWithImpl(_Local _value, $Res Function(_Local) _then)
      : super(_value, (v) => _then(v as _Local));

  @override
  _Local get _value => super._value as _Local;
}

/// @nodoc

class _$_Local implements _Local {
  _$_Local();

  @override
  String toString() {
    return 'Environment.local()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Local);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() local,
    required TResult Function() prod,
  }) {
    return local();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
  }) {
    return local?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_Prod value) prod,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _Local implements Environment {
  factory _Local() = _$_Local;
}

/// @nodoc
abstract class _$ProdCopyWith<$Res> {
  factory _$ProdCopyWith(_Prod value, $Res Function(_Prod) then) =
      __$ProdCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProdCopyWithImpl<$Res> extends _$EnvironmentCopyWithImpl<$Res>
    implements _$ProdCopyWith<$Res> {
  __$ProdCopyWithImpl(_Prod _value, $Res Function(_Prod) _then)
      : super(_value, (v) => _then(v as _Prod));

  @override
  _Prod get _value => super._value as _Prod;
}

/// @nodoc

class _$_Prod implements _Prod {
  _$_Prod();

  @override
  String toString() {
    return 'Environment.prod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Prod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() local,
    required TResult Function() prod,
  }) {
    return prod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
  }) {
    return prod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_Prod value) prod,
  }) {
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
  }) {
    return prod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class _Prod implements Environment {
  factory _Prod() = _$_Prod;
}
