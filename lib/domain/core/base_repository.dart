import 'package:dartz/dartz.dart';

import '../model/failure.dart';
import '../network/i_core_dio.dart';
import '../network/network_manager.dart';

typedef EitherFuture<T> = Future<Either<Failure, T>>;

abstract class BaseRepository {
  late NetworkManager manager;
  BaseRepository(this.manager);

  ICoreDio get coreDio => manager.coreDio;
}
