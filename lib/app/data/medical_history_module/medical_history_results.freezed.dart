// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_history_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalHistoryResults _$MedicalHistoryResultsFromJson(
    Map<String, dynamic> json) {
  return _MedicalHistoryResults.fromJson(json);
}

/// @nodoc
mixin _$MedicalHistoryResults {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<MedicalHistoryModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalHistoryResultsCopyWith<MedicalHistoryResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalHistoryResultsCopyWith<$Res> {
  factory $MedicalHistoryResultsCopyWith(MedicalHistoryResults value,
          $Res Function(MedicalHistoryResults) then) =
      _$MedicalHistoryResultsCopyWithImpl<$Res>;
  $Res call(
      {int limit,
      int page,
      int total,
      int totalPages,
      List<MedicalHistoryModel> results});
}

/// @nodoc
class _$MedicalHistoryResultsCopyWithImpl<$Res>
    implements $MedicalHistoryResultsCopyWith<$Res> {
  _$MedicalHistoryResultsCopyWithImpl(this._value, this._then);

  final MedicalHistoryResults _value;
  // ignore: unused_field
  final $Res Function(MedicalHistoryResults) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
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
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MedicalHistoryModel>,
    ));
  }
}

/// @nodoc
abstract class _$MedicalHistoryResultsCopyWith<$Res>
    implements $MedicalHistoryResultsCopyWith<$Res> {
  factory _$MedicalHistoryResultsCopyWith(_MedicalHistoryResults value,
          $Res Function(_MedicalHistoryResults) then) =
      __$MedicalHistoryResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int limit,
      int page,
      int total,
      int totalPages,
      List<MedicalHistoryModel> results});
}

/// @nodoc
class __$MedicalHistoryResultsCopyWithImpl<$Res>
    extends _$MedicalHistoryResultsCopyWithImpl<$Res>
    implements _$MedicalHistoryResultsCopyWith<$Res> {
  __$MedicalHistoryResultsCopyWithImpl(_MedicalHistoryResults _value,
      $Res Function(_MedicalHistoryResults) _then)
      : super(_value, (v) => _then(v as _MedicalHistoryResults));

  @override
  _MedicalHistoryResults get _value => super._value as _MedicalHistoryResults;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_MedicalHistoryResults(
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
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MedicalHistoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalHistoryResults implements _MedicalHistoryResults {
  _$_MedicalHistoryResults(
      {required this.limit,
      required this.page,
      required this.total,
      required this.totalPages,
      required final List<MedicalHistoryModel> results})
      : _results = results;

  factory _$_MedicalHistoryResults.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalHistoryResultsFromJson(json);

  @override
  final int limit;
  @override
  final int page;
  @override
  final int total;
  @override
  final int totalPages;
  final List<MedicalHistoryModel> _results;
  @override
  List<MedicalHistoryModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MedicalHistoryResults(limit: $limit, page: $page, total: $total, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalHistoryResults &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
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
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$MedicalHistoryResultsCopyWith<_MedicalHistoryResults> get copyWith =>
      __$MedicalHistoryResultsCopyWithImpl<_MedicalHistoryResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalHistoryResultsToJson(this);
  }
}

abstract class _MedicalHistoryResults implements MedicalHistoryResults {
  factory _MedicalHistoryResults(
          {required final int limit,
          required final int page,
          required final int total,
          required final int totalPages,
          required final List<MedicalHistoryModel> results}) =
      _$_MedicalHistoryResults;

  factory _MedicalHistoryResults.fromJson(Map<String, dynamic> json) =
      _$_MedicalHistoryResults.fromJson;

  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  int get totalPages => throw _privateConstructorUsedError;
  @override
  List<MedicalHistoryModel> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MedicalHistoryResultsCopyWith<_MedicalHistoryResults> get copyWith =>
      throw _privateConstructorUsedError;
}
