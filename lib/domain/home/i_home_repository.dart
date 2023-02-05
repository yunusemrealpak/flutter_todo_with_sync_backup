import 'package:flutter_todo_with_synchronized_backup/domain/model/todo_model.dart';

import '../core/base_repository.dart';
import '../model/failure.dart';

abstract class IHomeRepository extends BaseRepository {
  IHomeRepository(super.manager);

  EitherFuture<List<TodoModel>> getTodos();
  EitherFuture<TodoModel> addTodo(TodoModel todoModel);
  EitherFuture<TodoModel> updateTodo(TodoModel todoModel);
  EitherFuture<void> deleteTodo(int todoId);
}
