// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'treatment_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TreatmentResultsModel _$TreatmentResultsModelFromJson(
    Map<String, dynamic> json) {
  return _TreatmentResultsModel.fromJson(json);
}

/// @nodoc
mixin _$TreatmentResultsModel {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalSurgeries => throw _privateConstructorUsedError;
  int get totalChemotherapies => throw _privateConstructorUsedError;
  List<TreatmentModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreatmentResultsModelCopyWith<TreatmentResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreatmentResultsModelCopyWith<$Res> {
  factory $TreatmentResultsModelCopyWith(TreatmentResultsModel value,
          $Res Function(TreatmentResultsModel) then) =
      _$TreatmentResultsModelCopyWithImpl<$Res>;
  $Res call(
      {int limit,
      int page,
      int total,
      int totalPages,
      int totalSurgeries,
      int totalChemotherapies,
      List<TreatmentModel> results});
}

/// @nodoc
class _$TreatmentResultsModelCopyWithImpl<$Res>
    implements $TreatmentResultsModelCopyWith<$Res> {
  _$TreatmentResultsModelCopyWithImpl(this._value, this._then);

  final TreatmentResultsModel _value;
  // ignore: unused_field
  final $Res Function(TreatmentResultsModel) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? totalSurgeries = freezed,
    Object? totalChemotherapies = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalSurgeries: totalSurgeries == freezed
          ? _value.totalSurgeries
          : totalSurgeries // ignore: cast_nullable_to_non_nullable
              as int,
      totalChemotherapies: totalChemotherapies == freezed
          ? _value.totalChemotherapies
          : totalChemotherapies // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TreatmentModel>,
    ));
  }
}

/// @nodoc
abstract class _$TreatmentResultsModelCopyWith<$Res>
    implements $TreatmentResultsModelCopyWith<$Res> {
  factory _$TreatmentResultsModelCopyWith(_TreatmentResultsModel value,
          $Res Function(_TreatmentResultsModel) then) =
      __$TreatmentResultsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int limit,
      int page,
      int total,
      int totalPages,
      int totalSurgeries,
      int totalChemotherapies,
      List<TreatmentModel> results});
}

/// @nodoc
class __$TreatmentResultsModelCopyWithImpl<$Res>
    extends _$TreatmentResultsModelCopyWithImpl<$Res>
    implements _$TreatmentResultsModelCopyWith<$Res> {
  __$TreatmentResultsModelCopyWithImpl(_TreatmentResultsModel _value,
      $Res Function(_TreatmentResultsModel) _then)
      : super(_value, (v) => _then(v as _TreatmentResultsModel));

  @override
  _TreatmentResultsModel get _value => super._value as _TreatmentResultsModel;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? totalSurgeries = freezed,
    Object? totalChemotherapies = freezed,
    Object? results = freezed,
  }) {
    return _then(_TreatmentResultsModel(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalSurgeries: totalSurgeries == freezed
          ? _value.totalSurgeries
          : totalSurgeries // ignore: cast_nullable_to_non_nullable
              as int,
      totalChemotherapies: totalChemotherapies == freezed
          ? _value.totalChemotherapies
          : totalChemotherapies // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TreatmentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TreatmentResultsModel implements _TreatmentResultsModel {
  _$_TreatmentResultsModel(
      {required this.limit,
      required this.page,
      required this.total,
      required this.totalPages,
      required this.totalSurgeries,
      required this.totalChemotherapies,
      required final List<TreatmentModel> results})
      : _results = results;

  factory _$_TreatmentResultsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TreatmentResultsModelFromJson(json);

  @override
  final int limit;
  @override
  final int page;
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final int totalSurgeries;
  @override
  final int totalChemotherapies;
  final List<TreatmentModel> _results;
  @override
  List<TreatmentModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TreatmentResultsModel(limit: $limit, page: $page, total: $total, totalPages: $totalPages, totalSurgeries: $totalSurgeries, totalChemotherapies: $totalChemotherapies, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TreatmentResultsModel &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalSurgeries, totalSurgeries) &&
            const DeepCollectionEquality()
                .equals(other.totalChemotherapies, totalChemotherapies) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalSurgeries),
      const DeepCollectionEquality().hash(totalChemotherapies),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$TreatmentResultsModelCopyWith<_TreatmentResultsModel> get copyWith =>
      __$TreatmentResultsModelCopyWithImpl<_TreatmentResultsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TreatmentResultsModelToJson(this);
  }
}

abstract class _TreatmentResultsModel implements TreatmentResultsModel {
  factory _TreatmentResultsModel(
      {required final int limit,
      required final int page,
      required final int total,
      required final int totalPages,
      required final int totalSurgeries,
      required final int totalChemotherapies,
      required final List<TreatmentModel> results}) = _$_TreatmentResultsModel;

  factory _TreatmentResultsModel.fromJson(Map<String, dynamic> json) =
      _$_TreatmentResultsModel.fromJson;

  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  int get totalPages => throw _privateConstructorUsedError;
  @override
  int get totalSurgeries => throw _privateConstructorUsedError;
  @override
  int get totalChemotherapies => throw _privateConstructorUsedError;
  @override
  List<TreatmentModel> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TreatmentResultsModelCopyWith<_TreatmentResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
