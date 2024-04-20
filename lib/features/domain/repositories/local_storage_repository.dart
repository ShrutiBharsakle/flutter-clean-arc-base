import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arc_base/index.dart';

abstract class LocalStorageRepository {
  Future<Either<Failure, UserEntity>> getLocalUser();
}
