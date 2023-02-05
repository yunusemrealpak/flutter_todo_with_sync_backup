import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../injection.dart';
import '../model/failure.dart';
import '../network/i_core_dio.dart';
import '../network/network_manager.dart';

typedef EitherFuture<T> = Future<Either<Failure, T>>;

abstract class BaseRepository {
  ICoreDio coreDio = di<NetworkManager>().coreDio;
}
