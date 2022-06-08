// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interventions_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InterventionsTypesModel _$InterventionsTypesModelFromJson(
    Map<String, dynamic> json) {
  return _InterventionsTypesModel.fromJson(json);
}

/// @nodoc
mixin _$InterventionsTypesModel {
  int get surgeries => throw _privateConstructorUsedError;
  int get chemotherapies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterventionsTypesModelCopyWith<InterventionsTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterventionsTypesModelCopyWith<$Res> {
  factory $InterventionsTypesModelCopyWith(InterventionsTypesModel value,
          $Res Function(InterventionsTypesModel) then) =
      _$InterventionsTypesModelCopyWithImpl<$Res>;
  $Res call({int surgeries, int chemotherapies});
}

/// @nodoc
class _$InterventionsTypesModelCopyWithImpl<$Res>
    implements $InterventionsTypesModelCopyWith<$Res> {
  _$InterventionsTypesModelCopyWithImpl(this._value, this._then);

  final InterventionsTypesModel _value;
  // ignore: unused_field
  final $Res Function(InterventionsTypesModel) _then;

  @override
  $Res call({
    Object? surgeries = freezed,
    Object? chemotherapies = freezed,
  }) {
    return _then(_value.copyWith(
      surgeries: surgeries == freezed
          ? _value.surgeries
          : surgeries // ignore: cast_nullable_to_non_nullable
              as int,
      chemotherapies: chemotherapies == freezed
          ? _value.chemotherapies
          : chemotherapies // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InterventionsTypesModelCopyWith<$Res>
    implements $InterventionsTypesModelCopyWith<$Res> {
  factory _$InterventionsTypesModelCopyWith(_InterventionsTypesModel value,
          $Res Function(_InterventionsTypesModel) then) =
      __$InterventionsTypesModelCopyWithImpl<$Res>;
  @override
  $Res call({int surgeries, int chemotherapies});
}

/// @nodoc
class __$InterventionsTypesModelCopyWithImpl<$Res>
    extends _$InterventionsTypesModelCopyWithImpl<$Res>
    implements _$InterventionsTypesModelCopyWith<$Res> {
  __$InterventionsTypesModelCopyWithImpl(_InterventionsTypesModel _value,
      $Res Function(_InterventionsTypesModel) _then)
      : super(_value, (v) => _then(v as _InterventionsTypesModel));

  @override
  _InterventionsTypesModel get _value =>
      super._value as _InterventionsTypesModel;

  @override
  $Res call({
    Object? surgeries = freezed,
    Object? chemotherapies = freezed,
  }) {
    return _then(_InterventionsTypesModel(
      surgeries: surgeries == freezed
          ? _value.surgeries
          : surgeries // ignore: cast_nullable_to_non_nullable
              as int,
      chemotherapies: chemotherapies == freezed
          ? _value.chemotherapies
          : chemotherapies // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InterventionsTypesModel implements _InterventionsTypesModel {
  _$_InterventionsTypesModel(
      {required this.surgeries, required this.chemotherapies});

  factory _$_InterventionsTypesModel.fromJson(Map<String, dynamic> json) =>
      _$$_InterventionsTypesModelFromJson(json);

  @override
  final int surgeries;
  @override
  final int chemotherapies;

  @override
  String toString() {
    return 'InterventionsTypesModel(surgeries: $surgeries, chemotherapies: $chemotherapies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InterventionsTypesModel &&
            const DeepCollectionEquality().equals(other.surgeries, surgeries) &&
            const DeepCollectionEquality()
                .equals(other.chemotherapies, chemotherapies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surgeries),
      const DeepCollectionEquality().hash(chemotherapies));

  @JsonKey(ignore: true)
  @override
  _$InterventionsTypesModelCopyWith<_InterventionsTypesModel> get copyWith =>
      __$InterventionsTypesModelCopyWithImpl<_InterventionsTypesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterventionsTypesModelToJson(this);
  }
}

abstract class _InterventionsTypesModel implements InterventionsTypesModel {
  factory _InterventionsTypesModel(
      {required final int surgeries,
      required final int chemotherapies}) = _$_InterventionsTypesModel;

  factory _InterventionsTypesModel.fromJson(Map<String, dynamic> json) =
      _$_InterventionsTypesModel.fromJson;

  @override
  int get surgeries => throw _privateConstructorUsedError;
  @override
  int get chemotherapies => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InterventionsTypesModelCopyWith<_InterventionsTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
