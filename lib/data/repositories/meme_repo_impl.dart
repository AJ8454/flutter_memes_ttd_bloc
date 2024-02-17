import 'package:dartz/dartz.dart';
import 'package:flutter_memes_ttd_bloc/core/errors/failure.dart';
import 'package:flutter_memes_ttd_bloc/data/data_sources/remote_data_source.dart';
import 'package:flutter_memes_ttd_bloc/domain/entities/memes.dart';
import 'package:flutter_memes_ttd_bloc/domain/repositories/meme_repo.dart';

class MemeRepositoriesImpl extends MemeRepositories {
  final MemeRemoteDataSource memeRemoteDataSource;
  MemeRepositoriesImpl({required this.memeRemoteDataSource});
  
  @override
  Future<Either<Failure, List<Meme>>> getMemes() async {
    return await memeRemoteDataSource.getMemes();
  }
}
