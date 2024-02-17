import 'package:dartz/dartz.dart';
import 'package:flutter_memes_ttd_bloc/core/errors/failures.dart';

abstract class UseCases<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
