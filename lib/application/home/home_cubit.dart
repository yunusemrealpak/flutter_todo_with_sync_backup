import 'package:flutter_todo_with_synchronized_backup/domain/home/i_home_repository.dart';
import 'package:flutter_todo_with_synchronized_backup/domain/model/todo_model.dart';
import 'package:flutter_todo_with_synchronized_backup/infrastructure/cache/storage_service.dart';
import 'package:uuid/uuid.dart';

import '../../domain/cache/model/storage_model.dart';
import '../core/base_cubit.dart';
import 'home_state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  final IHomeRepository _homeRepository;
  final StorageService _storageService;
  HomeCubit(this._storageService, this._homeRepository)
      : super(HomeState.initial());

  void init() {
    final model = _storageService.getData();
    if (model != null) {
      safeEmit(state.copyWith(todos: model.todos ?? []));
    }
  }

  Future<void> addTodo(TodoModel todo) async {
    todo = todo.copyWith(id: const Uuid().v4());
    final todos = state.todos;
    todos.add(todo);

    safeEmit(state.copyWith(todos: todos));

    final model = _storageService.getData();
    var updateTodoIds = model?.updateTodoIds ?? [];
    updateTodoIds.add(todo.id!);

    if (model != null) {
      await _storageService.setData(
        model.copyWith(
          todos: todos,
          updateTodoIds: updateTodoIds,
        ),
      );
    } else {
      await _storageService.setData(
        StorageModel(
          todos: todos,
          updateTodoIds: updateTodoIds,
        ),
      );
    }

    try {
      final result = await _homeRepository.addTodo(todo);
      result.fold(
        (l) => throw Exception(),
        (r) {
          final now = DateTime.now();
          final model = _storageService.getData();
          _storageService.setData(
            model!.copyWith(
              updateTodoIds: [],
              lastStorageUpdated: now,
              lastApiSynchronized: now,
            ),
          );
        },
      );
    } catch (e) {
      final now = DateTime.now();
      final model = _storageService.getData();
      _storageService.setData(
        model!.copyWith(
          updateTodoIds: [],
          lastStorageUpdated: now,
        ),
      );
    }
  }

  @override
  void setLoading(bool loading) {
    safeEmit(state.copyWith(isLoading: loading));
  }
}
