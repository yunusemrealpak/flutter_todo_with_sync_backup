// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StorageModelAdapter extends TypeAdapter<StorageModel> {
  @override
  final int typeId = 1;

  @override
  StorageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StorageModel(
      lastApiSynchronized: fields[0] as DateTime?,
      lastStorageUpdated: fields[1] as DateTime?,
      todos: (fields[2] as List?)?.cast<TodoModel>(),
      updateTodoIds: (fields[3] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, StorageModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.lastApiSynchronized)
      ..writeByte(1)
      ..write(obj.lastStorageUpdated)
      ..writeByte(2)
      ..write(obj.todos)
      ..writeByte(3)
      ..write(obj.updateTodoIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StorageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
