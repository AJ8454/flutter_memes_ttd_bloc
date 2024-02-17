import 'package:dartz/dartz.dart';
import 'package:flutter_memes_ttd_bloc/core/errors/failure.dart';
import 'package:flutter_memes_ttd_bloc/core/usecases/empty_params.dart';
import 'package:flutter_memes_ttd_bloc/core/usecases/usecases.dart';
import 'package:flutter_memes_ttd_bloc/domain/entities/memes.dart';
import 'package:flutter_memes_ttd_bloc/domain/repositories/meme_repo.dart';

class GetMemes implements UseCases<List<Meme>, NoParams> {
  final MemeRepositories memeRepositories;

  const GetMemes({required this.memeRepositories});

  @override
  Future<Either<Failure, List<Meme>>> call(NoParams params) {
    return memeRepositories.getMemes();
  }
}
