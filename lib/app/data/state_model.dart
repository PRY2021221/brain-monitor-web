import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_model.freezed.dart';

@freezed
class StateModel<T> with _$StateModel<T> {
  factory StateModel() = Initial;
  factory StateModel.loading() = Loading<T>;
  factory StateModel.data(T data) = Data<T>;
}
