import 'package:dartz/dartz.dart';
import 'package:flutter_todo_with_synchronized_backup/domain/model/todo_model.dart';
import 'package:flutter_todo_with_synchronized_backup/domain/core/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../../core/enums/http_types.dart';
import '../../domain/home/i_home_repository.dart';
import '../../domain/model/failure.dart';
import '../../domain/network/network_paths.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  HomeRepository(super.manager);

  @override
  EitherFuture<TodoModel> addTodo(TodoModel todoModel) async {
    final response = await coreDio.send(
      NetworkPaths.addTodo,
      type: HttpTypes.POST,
      data: todoModel.toJson(),
    );

    switch (response.statusCode) {
      case 1:
        final status = response.status ?? false;
        if (!status) return left(Failure(message: response.errorMessage));

        return right(todoModel);
      default:
        return left(Failure(message: response.errorMessage));
    }
  }

  @override
  EitherFuture<void> deleteTodo(int todoId) async {
    final response = await coreDio.send(
      NetworkPaths.deleteTodo,
      type: HttpTypes.POST,
      data: {'id': todoId},
    );

    switch (response.statusCode) {
      case 1:
        final status = response.status ?? false;
        if (!status) return left(Failure(message: response.errorMessage));

        return right(null);
      default:
        return left(Failure(message: response.errorMessage));
    }
  }

  @override
  EitherFuture<List<TodoModel>> getTodos() async {
    final response = await coreDio.send(
      NetworkPaths.getTodo,
      type: HttpTypes.GET,
    );

    switch (response.statusCode) {
      case 1:
        final status = response.status ?? false;
        if (!status) return left(Failure(message: response.errorMessage));

        final todos =
            (response.data as List).map((e) => TodoModel.fromJson(e)).toList();

        return right(todos);
      default:
        return left(Failure(message: response.errorMessage));
    }
  }

  @override
  EitherFuture<TodoModel> updateTodo(TodoModel todoModel) async {
    final response = await coreDio.send(
      NetworkPaths.updateTodo,
      type: HttpTypes.POST,
      data: todoModel.toJson(),
    );

    switch (response.statusCode) {
      case 1:
        final status = response.status ?? false;
        if (!status) return left(Failure(message: response.errorMessage));

        return right(todoModel);
      default:
        return left(Failure(message: response.errorMessage));
    }
  }
}
