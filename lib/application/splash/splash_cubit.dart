import 'package:flutter_todo_with_synchronized_backup/application/splash/splash_state.dart';
import 'package:flutter_todo_with_synchronized_backup/application/synchronize/synchronize_cubit.dart';
import 'package:flutter_todo_with_synchronized_backup/domain/cache/i_cache_service.dart';

import '../../infrastructure/cache/storage_service.dart';
import '../core/base_cubit.dart';

class SplashCubit extends BaseCubit<SplashState> {
  final StorageService _storageService;
  SplashCubit(this._storageService) : super(SplashState.initial());

  Future<void> init() async {
    setLoading(true);
    await _storageService.init();
    _controlStorage();
    setLoading(false);
  }

  _controlStorage() async {
    final model = _storageService.getData();
    if (model != null) {
      final lastStorageUpdated = model.lastStorageUpdated;
      final lastApiSynchronized = model.lastApiSynchronized;
      if (lastStorageUpdated != null && lastApiSynchronized != null) {
        final difference = lastStorageUpdated.difference(lastApiSynchronized);
        if (difference.inMinutes > 1) {
          //context.router.replaceAll([const SynchronizeRoute()];
        } else {
          //context.router.replaceAll([const HomeRoute()];
        }
      } else if (lastStorageUpdated != null && lastApiSynchronized == null) {
        //context.router.replaceAll([const SynchronizeRoute()];
      } else {
        //context.router.replaceAll([const HomeRoute()];
      }
    }
  }

  @override
  void setLoading(bool loading) {
    safeEmit(state.copyWith(isLoading: loading));
  }
}
