import 'package:dio/dio.dart';
import 'package:flutter_memes_ttd_bloc/data/data_sources/remote_data_source.dart';
import 'package:flutter_memes_ttd_bloc/data/repositories/meme_repo_impl.dart';
import 'package:flutter_memes_ttd_bloc/domain/usecases/get_memes.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(MemeRemoteDataSourceImpl(dio: getIt<Dio>()));
  getIt.registerSingleton(MemeRepositoriesImpl(
      memeRemoteDataSource: getIt<MemeRemoteDataSourceImpl>()));
  getIt.registerSingleton(
      GetMemes(memeRepositories: getIt<MemeRepositoriesImpl>()));
}
