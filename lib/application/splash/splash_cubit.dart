import 'package:flutter_todo_with_synchronized_backup/application/splash/splash_state.dart';
import 'package:flutter_todo_with_synchronized_backup/domain/cache/i_cache_service.dart';

import '../../infrastructure/cache/storage_service.dart';
import '../core/base_cubit.dart';

class SplashCubit extends BaseCubit<SplashState> {
  final StorageService _storageService;
  SplashCubit(this._storageService) : super(SplashState.initial());

  Future<void> init() async {
    setLoading(true);
    await _storageService.init();
    setLoading(false);
  }

  @override
  void setLoading(bool loading) {
    safeEmit(state.copyWith(isLoading: loading));
  }
}
