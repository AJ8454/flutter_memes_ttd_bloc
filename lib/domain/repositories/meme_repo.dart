import 'package:dartz/dartz.dart';
import 'package:flutter_memes_ttd_bloc/core/errors/failure.dart';
import 'package:flutter_memes_ttd_bloc/domain/entities/memes.dart';

abstract class MemeRepositories {
  Future<Either<Failure, List<Meme>>> getMemes();
}
