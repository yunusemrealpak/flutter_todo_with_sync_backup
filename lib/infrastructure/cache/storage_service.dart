import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../constants/hive_constants.dart';
import '../../domain/cache/i_cache_service.dart';
import '../../domain/cache/model/storage_model.dart';

@singleton
class StorageService extends ICacheManager<StorageModel> {
  StorageService() : super(HiveConstants.storageServiceKey);

  @override
  StorageModel? getData() {
    return box?.get(HiveConstants.storageKey);
  }

  @override
  Future<void> putAll(List<StorageModel> items) async {}

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(HiveConstants.storageId)) {
      Hive.registerAdapter(StorageModelAdapter());
    }
  }

  @override
  Future<void> removeItem(String key) async {
    await box?.delete(HiveConstants.storageKey);
  }

  @override
  Future<void> setData(StorageModel data) async {
    await box?.put(HiveConstants.storageKey, data);
  }
}
