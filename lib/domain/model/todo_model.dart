import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) = _TodoModel;
  const TodoModel._();
  factory TodoModel.initial() => const TodoModel();
  factory TodoModel.fromJson(Map<String, dynamic> data) =>
      _$TodoModelFromJson(data);
}
