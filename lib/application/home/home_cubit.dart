import 'package:flutter_todo_with_synchronized_backup/domain/model/todo_model.dart';
import 'package:flutter_todo_with_synchronized_backup/infrastructure/cache/storage_service.dart';
import 'package:uuid/uuid.dart';

import '../../domain/cache/model/storage_model.dart';
import '../core/base_cubit.dart';
import 'home_state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  final StorageService _storageService;
  HomeCubit(this._storageService) : super(HomeState.initial());

  void init() {
    final model = _storageService.getData();
    if (model != null) {
      safeEmit(state.copyWith(todos: model.todos ?? []));
    }
  }

  void addTodo(TodoModel todo) {
    todo = todo.copyWith(id: const Uuid().v4());
    final todos = state.todos;
    todos.add(todo);

    final model = _storageService.getData();
    var updateTodoIds = model?.updateTodoIds ?? [];
    updateTodoIds.add(todo.id!);

    if (model != null) {
      _storageService.setData(
        model.copyWith(
          todos: todos,
          updateTodoIds: updateTodoIds,
        ),
      );
    } else {
      _storageService.setData(
        StorageModel(
          todos: todos,
          lastStorageUpdated: DateTime.now(),
          updateTodoIds: updateTodoIds,
        ),
      );
    }
    safeEmit(state.copyWith(todos: todos));
  }

  @override
  void setLoading(bool loading) {
    safeEmit(state.copyWith(isLoading: loading));
  }
}
