import 'package:flutter_todo_with_synchronized_backup/application/synchronize/synchronize_state.dart';

import '../core/base_cubit.dart';

class SynchronizeCubit extends BaseCubit<SynchronizeState> {
  SynchronizeCubit() : super(SynchronizeState.initial());

  @override
  void setLoading(bool loading) {
    safeEmit(state.copyWith(isLoading: loading));
  }
}
