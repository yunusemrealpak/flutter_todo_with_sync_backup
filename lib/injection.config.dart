// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_todo_with_synchronized_backup/domain/home/i_home_repository.dart'
    as _i5;
import 'package:flutter_todo_with_synchronized_backup/domain/network/network_manager.dart'
    as _i3;
import 'package:flutter_todo_with_synchronized_backup/infrastructure/cache/storage_service.dart'
    as _i4;
import 'package:flutter_todo_with_synchronized_backup/infrastructure/home/home_repository.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.NetworkManager>(_i3.NetworkManager());
  gh.singleton<_i4.StorageService>(_i4.StorageService());
  gh.lazySingleton<_i5.IHomeRepository>(
      () => _i6.HomeRepository(gh<_i3.NetworkManager>()));
  return getIt;
}
