import 'package:freezed_annotation/freezed_annotation.dart';

part 'environment.freezed.dart';

@freezed
abstract class Environment with _$Environment {
  factory Environment.local() = _Local;
  factory Environment.prod() = _Prod;
}
