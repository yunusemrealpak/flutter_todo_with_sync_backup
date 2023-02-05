import 'package:flutter_todo_with_synchronized_backup/application/core/base_state.dart';
import 'package:flutter_todo_with_synchronized_backup/domain/model/todo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState extends BaseState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<TodoModel> todos,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState();
}
