import 'package:flutter_todo_with_synchronized_backup/infrastructure/cache/storage_service.dart';

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

  @override
  void setLoading(bool loading) {
    safeEmit(state.copyWith(isLoading: loading));
  }
}
