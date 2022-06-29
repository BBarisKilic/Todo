part of 'todo_cubit.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded({required List<Task> tasks}) = _Loaded;
  const factory TodoState.error() = _Error;
}
