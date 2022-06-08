// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) {
  return _DashboardModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardModel {
  int get totalPatients => throw _privateConstructorUsedError;
  int get activePatients => throw _privateConstructorUsedError;
  DashboardOptionsModel get totalPatientsWithCancer =>
      throw _privateConstructorUsedError;
  DashboardOptionsModel get percentageOfPrioritizations =>
      throw _privateConstructorUsedError;
  DashboardOptionsModel get percentageOfPatientsStatus =>
      throw _privateConstructorUsedError;
  InterventionsAgeModel get interventionsByAge =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardModelCopyWith<DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res>;
  $Res call(
      {int totalPatients,
      int activePatients,
      DashboardOptionsModel totalPatientsWithCancer,
      DashboardOptionsModel percentageOfPrioritizations,
      DashboardOptionsModel percentageOfPatientsStatus,
      InterventionsAgeModel interventionsByAge});

  $DashboardOptionsModelCopyWith<$Res> get totalPatientsWithCancer;
  $DashboardOptionsModelCopyWith<$Res> get percentageOfPrioritizations;
  $DashboardOptionsModelCopyWith<$Res> get percentageOfPatientsStatus;
  $InterventionsAgeModelCopyWith<$Res> get interventionsByAge;
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  final DashboardModel _value;
  // ignore: unused_field
  final $Res Function(DashboardModel) _then;

  @override
  $Res call({
    Object? totalPatients = freezed,
    Object? activePatients = freezed,
    Object? totalPatientsWithCancer = freezed,
    Object? percentageOfPrioritizations = freezed,
    Object? percentageOfPatientsStatus = freezed,
    Object? interventionsByAge = freezed,
  }) {
    return _then(_value.copyWith(
      totalPatients: totalPatients == freezed
          ? _value.totalPatients
          : totalPatients // ignore: cast_nullable_to_non_nullable
              as int,
      activePatients: activePatients == freezed
          ? _value.activePatients
          : activePatients // ignore: cast_nullable_to_non_nullable
              as int,
      totalPatientsWithCancer: totalPatientsWithCancer == freezed
          ? _value.totalPatientsWithCancer
          : totalPatientsWithCancer // ignore: cast_nullable_to_non_nullable
              as DashboardOptionsModel,
      percentageOfPrioritizations: percentageOfPrioritizations == freezed
          ? _value.percentageOfPrioritizations
          : percentageOfPrioritizations // ignore: cast_nullable_to_non_nullable
              as DashboardOptionsModel,
      percentageOfPatientsStatus: percentageOfPatientsStatus == freezed
          ? _value.percentageOfPatientsStatus
          : percentageOfPatientsStatus // ignore: cast_nullable_to_non_nullable
              as DashboardOptionsModel,
      interventionsByAge: interventionsByAge == freezed
          ? _value.interventionsByAge
          : interventionsByAge // ignore: cast_nullable_to_non_nullable
              as InterventionsAgeModel,
    ));
  }

  @override
  $DashboardOptionsModelCopyWith<$Res> get totalPatientsWithCancer {
    return $DashboardOptionsModelCopyWith<$Res>(_value.totalPatientsWithCancer,
        (value) {
      return _then(_value.copyWith(totalPatientsWithCancer: value));
    });
  }

  @override
  $DashboardOptionsModelCopyWith<$Res> get percentageOfPrioritizations {
    return $DashboardOptionsModelCopyWith<$Res>(
        _value.percentageOfPrioritizations, (value) {
      return _then(_value.copyWith(percentageOfPrioritizations: value));
    });
  }

  @override
  $DashboardOptionsModelCopyWith<$Res> get percentageOfPatientsStatus {
    return $DashboardOptionsModelCopyWith<$Res>(
        _value.percentageOfPatientsStatus, (value) {
      return _then(_value.copyWith(percentageOfPatientsStatus: value));
    });
  }

  @override
  $InterventionsAgeModelCopyWith<$Res> get interventionsByAge {
    return $InterventionsAgeModelCopyWith<$Res>(_value.interventionsByAge,
        (value) {
      return _then(_value.copyWith(interventionsByAge: value));
    });
  }
}

/// @nodoc
abstract class _$DashboardModelCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(
          _DashboardModel value, $Res Function(_DashboardModel) then) =
      __$DashboardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalPatients,
      int activePatients,
      DashboardOptionsModel totalPatientsWithCancer,
      DashboardOptionsModel percentageOfPrioritizations,
      DashboardOptionsModel percentageOfPatientsStatus,
      InterventionsAgeModel interventionsByAge});

  @override
  $DashboardOptionsModelCopyWith<$Res> get totalPatientsWithCancer;
  @override
  $DashboardOptionsModelCopyWith<$Res> get percentageOfPrioritizations;
  @override
  $DashboardOptionsModelCopyWith<$Res> get percentageOfPatientsStatus;
  @override
  $InterventionsAgeModelCopyWith<$Res> get interventionsByAge;
}

/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(
      _DashboardModel _value, $Res Function(_DashboardModel) _then)
      : super(_value, (v) => _then(v as _DashboardModel));

  @override
  _DashboardModel get _value => super._value as _DashboardModel;

  @override
  $Res call({
    Object? totalPatients = freezed,
    Object? activePatients = freezed,
    Object? totalPatientsWithCancer = freezed,
    Object? percentageOfPrioritizations = freezed,
    Object? percentageOfPatientsStatus = freezed,
    Object? interventionsByAge = freezed,
  }) {
    return _then(_DashboardModel(
      totalPatients: totalPatients == freezed
          ? _value.totalPatients
          : totalPatients // ignore: cast_nullable_to_non_nullable
              as int,
      activePatients: activePatients == freezed
          ? _value.activePatients
          : activePatients // ignore: cast_nullable_to_non_nullable
              as int,
      totalPatientsWithCancer: totalPatientsWithCancer == freezed
          ? _value.totalPatientsWithCancer
          : totalPatientsWithCancer // ignore: cast_nullable_to_non_nullable
              as DashboardOptionsModel,
      percentageOfPrioritizations: percentageOfPrioritizations == freezed
          ? _value.percentageOfPrioritizations
          : percentageOfPrioritizations // ignore: cast_nullable_to_non_nullable
              as DashboardOptionsModel,
      percentageOfPatientsStatus: percentageOfPatientsStatus == freezed
          ? _value.percentageOfPatientsStatus
          : percentageOfPatientsStatus // ignore: cast_nullable_to_non_nullable
              as DashboardOptionsModel,
      interventionsByAge: interventionsByAge == freezed
          ? _value.interventionsByAge
          : interventionsByAge // ignore: cast_nullable_to_non_nullable
              as InterventionsAgeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardModel implements _DashboardModel {
  _$_DashboardModel(
      {required this.totalPatients,
      required this.activePatients,
      required this.totalPatientsWithCancer,
      required this.percentageOfPrioritizations,
      required this.percentageOfPatientsStatus,
      required this.interventionsByAge});

  factory _$_DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardModelFromJson(json);

  @override
  final int totalPatients;
  @override
  final int activePatients;
  @override
  final DashboardOptionsModel totalPatientsWithCancer;
  @override
  final DashboardOptionsModel percentageOfPrioritizations;
  @override
  final DashboardOptionsModel percentageOfPatientsStatus;
  @override
  final InterventionsAgeModel interventionsByAge;

  @override
  String toString() {
    return 'DashboardModel(totalPatients: $totalPatients, activePatients: $activePatients, totalPatientsWithCancer: $totalPatientsWithCancer, percentageOfPrioritizations: $percentageOfPrioritizations, percentageOfPatientsStatus: $percentageOfPatientsStatus, interventionsByAge: $interventionsByAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardModel &&
            const DeepCollectionEquality()
                .equals(other.totalPatients, totalPatients) &&
            const DeepCollectionEquality()
                .equals(other.activePatients, activePatients) &&
            const DeepCollectionEquality().equals(
                other.totalPatientsWithCancer, totalPatientsWithCancer) &&
            const DeepCollectionEquality().equals(
                other.percentageOfPrioritizations,
                percentageOfPrioritizations) &&
            const DeepCollectionEquality().equals(
                other.percentageOfPatientsStatus, percentageOfPatientsStatus) &&
            const DeepCollectionEquality()
                .equals(other.interventionsByAge, interventionsByAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalPatients),
      const DeepCollectionEquality().hash(activePatients),
      const DeepCollectionEquality().hash(totalPatientsWithCancer),
      const DeepCollectionEquality().hash(percentageOfPrioritizations),
      const DeepCollectionEquality().hash(percentageOfPatientsStatus),
      const DeepCollectionEquality().hash(interventionsByAge));

  @JsonKey(ignore: true)
  @override
  _$DashboardModelCopyWith<_DashboardModel> get copyWith =>
      __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardModelToJson(this);
  }
}

abstract class _DashboardModel implements DashboardModel {
  factory _DashboardModel(
          {required final int totalPatients,
          required final int activePatients,
          required final DashboardOptionsModel totalPatientsWithCancer,
          required final DashboardOptionsModel percentageOfPrioritizations,
          required final DashboardOptionsModel percentageOfPatientsStatus,
          required final InterventionsAgeModel interventionsByAge}) =
      _$_DashboardModel;

  factory _DashboardModel.fromJson(Map<String, dynamic> json) =
      _$_DashboardModel.fromJson;

  @override
  int get totalPatients => throw _privateConstructorUsedError;
  @override
  int get activePatients => throw _privateConstructorUsedError;
  @override
  DashboardOptionsModel get totalPatientsWithCancer =>
      throw _privateConstructorUsedError;
  @override
  DashboardOptionsModel get percentageOfPrioritizations =>
      throw _privateConstructorUsedError;
  @override
  DashboardOptionsModel get percentageOfPatientsStatus =>
      throw _privateConstructorUsedError;
  @override
  InterventionsAgeModel get interventionsByAge =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DashboardModelCopyWith<_DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
