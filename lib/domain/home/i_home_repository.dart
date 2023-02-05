import '../core/base_repository.dart';
import '../network/i_core_dio.dart';
import '../network/network_manager.dart';

abstract class BaseRepository {
  late NetworkManager manager;
  BaseRepository(this.manager);

  ICoreDio get coreDio => manager.coreDio;
}
