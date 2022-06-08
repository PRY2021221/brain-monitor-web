// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assignment_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignmentResults _$AssignmentResultsFromJson(Map<String, dynamic> json) {
  return _AssignmentResults.fromJson(json);
}

/// @nodoc
mixin _$AssignmentResults {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  String? get currentPrioritization => throw _privateConstructorUsedError;
  String? get currentAssignmentStatus => throw _privateConstructorUsedError;
  List<AssignmentModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignmentResultsCopyWith<AssignmentResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentResultsCopyWith<$Res> {
  factory $AssignmentResultsCopyWith(
          AssignmentResults value, $Res Function(AssignmentResults) then) =
      _$AssignmentResultsCopyWithImpl<$Res>;
  $Res call(
      {int limit,
      int page,
      int total,
      int totalPages,
      String? currentPrioritization,
      String? currentAssignmentStatus,
      List<AssignmentModel> results});
}

/// @nodoc
class _$AssignmentResultsCopyWithImpl<$Res>
    implements $AssignmentResultsCopyWith<$Res> {
  _$AssignmentResultsCopyWithImpl(this._value, this._then);

  final AssignmentResults _value;
  // ignore: unused_field
  final $Res Function(AssignmentResults) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? currentPrioritization = freezed,
    Object? currentAssignmentStatus = freezed,
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
      currentPrioritization: currentPrioritization == freezed
          ? _value.currentPrioritization
          : currentPrioritization // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAssignmentStatus: currentAssignmentStatus == freezed
          ? _value.currentAssignmentStatus
          : currentAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AssignmentModel>,
    ));
  }
}

/// @nodoc
abstract class _$AssignmentResultsCopyWith<$Res>
    implements $AssignmentResultsCopyWith<$Res> {
  factory _$AssignmentResultsCopyWith(
          _AssignmentResults value, $Res Function(_AssignmentResults) then) =
      __$AssignmentResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int limit,
      int page,
      int total,
      int totalPages,
      String? currentPrioritization,
      String? currentAssignmentStatus,
      List<AssignmentModel> results});
}

/// @nodoc
class __$AssignmentResultsCopyWithImpl<$Res>
    extends _$AssignmentResultsCopyWithImpl<$Res>
    implements _$AssignmentResultsCopyWith<$Res> {
  __$AssignmentResultsCopyWithImpl(
      _AssignmentResults _value, $Res Function(_AssignmentResults) _then)
      : super(_value, (v) => _then(v as _AssignmentResults));

  @override
  _AssignmentResults get _value => super._value as _AssignmentResults;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? currentPrioritization = freezed,
    Object? currentAssignmentStatus = freezed,
    Object? results = freezed,
  }) {
    return _then(_AssignmentResults(
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
      currentPrioritization: currentPrioritization == freezed
          ? _value.currentPrioritization
          : currentPrioritization // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAssignmentStatus: currentAssignmentStatus == freezed
          ? _value.currentAssignmentStatus
          : currentAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AssignmentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssignmentResults implements _AssignmentResults {
  _$_AssignmentResults(
      {required this.limit,
      required this.page,
      required this.total,
      required this.totalPages,
      required this.currentPrioritization,
      required this.currentAssignmentStatus,
      required final List<AssignmentModel> results})
      : _results = results;

  factory _$_AssignmentResults.fromJson(Map<String, dynamic> json) =>
      _$$_AssignmentResultsFromJson(json);

  @override
  final int limit;
  @override
  final int page;
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final String? currentPrioritization;
  @override
  final String? currentAssignmentStatus;
  final List<AssignmentModel> _results;
  @override
  List<AssignmentModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'AssignmentResults(limit: $limit, page: $page, total: $total, totalPages: $totalPages, currentPrioritization: $currentPrioritization, currentAssignmentStatus: $currentAssignmentStatus, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AssignmentResults &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.currentPrioritization, currentPrioritization) &&
            const DeepCollectionEquality().equals(
                other.currentAssignmentStatus, currentAssignmentStatus) &&
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
      const DeepCollectionEquality().hash(currentPrioritization),
      const DeepCollectionEquality().hash(currentAssignmentStatus),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$AssignmentResultsCopyWith<_AssignmentResults> get copyWith =>
      __$AssignmentResultsCopyWithImpl<_AssignmentResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignmentResultsToJson(this);
  }
}

abstract class _AssignmentResults implements AssignmentResults {
  factory _AssignmentResults(
      {required final int limit,
      required final int page,
      required final int total,
      required final int totalPages,
      required final String? currentPrioritization,
      required final String? currentAssignmentStatus,
      required final List<AssignmentModel> results}) = _$_AssignmentResults;

  factory _AssignmentResults.fromJson(Map<String, dynamic> json) =
      _$_AssignmentResults.fromJson;

  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  int get totalPages => throw _privateConstructorUsedError;
  @override
  String? get currentPrioritization => throw _privateConstructorUsedError;
  @override
  String? get currentAssignmentStatus => throw _privateConstructorUsedError;
  @override
  List<AssignmentModel> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssignmentResultsCopyWith<_AssignmentResults> get copyWith =>
      throw _privateConstructorUsedError;
}
