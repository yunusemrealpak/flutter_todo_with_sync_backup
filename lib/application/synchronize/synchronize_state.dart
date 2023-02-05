import 'package:flutter_todo_with_synchronized_backup/application/core/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'synchronize_state.freezed.dart';

@freezed
class SynchronizeState extends BaseState with _$SynchronizeState {
  const factory SynchronizeState({
    @Default(false) bool isLoading,
  }) = _SynchronizeState;
  factory SynchronizeState.initial() => const SynchronizeState();
}
