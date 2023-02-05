import 'package:flutter_todo_with_synchronized_backup/constants/hive_constants.dart';
import 'package:flutter_todo_with_synchronized_backup/domain/model/todo_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'storage_model.g.dart';

@HiveType(typeId: HiveConstants.storageId)
class StorageModel extends HiveObject {
  StorageModel({
    this.lastApiSynchronized,
    this.lastStorageUpdated,
    this.todos,
    this.updateTodoIds,
  });

  @HiveField(0)
  DateTime? lastApiSynchronized;
  @HiveField(1)
  DateTime? lastStorageUpdated;
  @HiveField(2)
  List<TodoModel>? todos;
  @HiveField(3)
  List<String>? updateTodoIds;

  StorageModel copyWith({
    DateTime? lastApiSynchronized,
    DateTime? lastStorageUpdated,
    List<TodoModel>? todos,
    List<String>? updateTodoIds,
  }) {
    return StorageModel(
      lastApiSynchronized: lastApiSynchronized ?? this.lastApiSynchronized,
      lastStorageUpdated: lastStorageUpdated ?? this.lastStorageUpdated,
      todos: todos ?? this.todos,
      updateTodoIds: updateTodoIds ?? this.updateTodoIds,
    );
  }
}
