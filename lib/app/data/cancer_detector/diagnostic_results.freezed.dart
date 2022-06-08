// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diagnostic_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiagnosticResults _$DiagnosticResultsFromJson(Map<String, dynamic> json) {
  return _DiagnosticResults.fromJson(json);
}

/// @nodoc
mixin _$DiagnosticResults {
  OutputModel get output => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosticResultsCopyWith<DiagnosticResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticResultsCopyWith<$Res> {
  factory $DiagnosticResultsCopyWith(
          DiagnosticResults value, $Res Function(DiagnosticResults) then) =
      _$DiagnosticResultsCopyWithImpl<$Res>;
  $Res call({OutputModel output});

  $OutputModelCopyWith<$Res> get output;
}

/// @nodoc
class _$DiagnosticResultsCopyWithImpl<$Res>
    implements $DiagnosticResultsCopyWith<$Res> {
  _$DiagnosticResultsCopyWithImpl(this._value, this._then);

  final DiagnosticResults _value;
  // ignore: unused_field
  final $Res Function(DiagnosticResults) _then;

  @override
  $Res call({
    Object? output = freezed,
  }) {
    return _then(_value.copyWith(
      output: output == freezed
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as OutputModel,
    ));
  }

  @override
  $OutputModelCopyWith<$Res> get output {
    return $OutputModelCopyWith<$Res>(_value.output, (value) {
      return _then(_value.copyWith(output: value));
    });
  }
}

/// @nodoc
abstract class _$DiagnosticResultsCopyWith<$Res>
    implements $DiagnosticResultsCopyWith<$Res> {
  factory _$DiagnosticResultsCopyWith(
          _DiagnosticResults value, $Res Function(_DiagnosticResults) then) =
      __$DiagnosticResultsCopyWithImpl<$Res>;
  @override
  $Res call({OutputModel output});

  @override
  $OutputModelCopyWith<$Res> get output;
}

/// @nodoc
class __$DiagnosticResultsCopyWithImpl<$Res>
    extends _$DiagnosticResultsCopyWithImpl<$Res>
    implements _$DiagnosticResultsCopyWith<$Res> {
  __$DiagnosticResultsCopyWithImpl(
      _DiagnosticResults _value, $Res Function(_DiagnosticResults) _then)
      : super(_value, (v) => _then(v as _DiagnosticResults));

  @override
  _DiagnosticResults get _value => super._value as _DiagnosticResults;

  @override
  $Res call({
    Object? output = freezed,
  }) {
    return _then(_DiagnosticResults(
      output: output == freezed
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as OutputModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiagnosticResults implements _DiagnosticResults {
  _$_DiagnosticResults({required this.output});

  factory _$_DiagnosticResults.fromJson(Map<String, dynamic> json) =>
      _$$_DiagnosticResultsFromJson(json);

  @override
  final OutputModel output;

  @override
  String toString() {
    return 'DiagnosticResults(output: $output)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiagnosticResults &&
            const DeepCollectionEquality().equals(other.output, output));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(output));

  @JsonKey(ignore: true)
  @override
  _$DiagnosticResultsCopyWith<_DiagnosticResults> get copyWith =>
      __$DiagnosticResultsCopyWithImpl<_DiagnosticResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiagnosticResultsToJson(this);
  }
}

abstract class _DiagnosticResults implements DiagnosticResults {
  factory _DiagnosticResults({required final OutputModel output}) =
      _$_DiagnosticResults;

  factory _DiagnosticResults.fromJson(Map<String, dynamic> json) =
      _$_DiagnosticResults.fromJson;

  @override
  OutputModel get output => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiagnosticResultsCopyWith<_DiagnosticResults> get copyWith =>
      throw _privateConstructorUsedError;
}
