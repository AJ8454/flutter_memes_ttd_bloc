import 'package:dartz/dartz.dart';
import 'package:flutter_memes_ttd_bloc/data/data_sources/remote_data_source.dart';
import 'package:flutter_memes_ttd_bloc/data/repositories/meme_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/migrated_mocks.dart';
import 'meme_repositories_test.mocks.dart';

@GenerateMocks([MemeRemoteDataSource])
void main() {
  final mockMemeRemoteDataSource = MockMemeRemoteDataSource();

  void setUpSuccessForGetMeme() {
    when(mockMemeRemoteDataSource.getMemes()).thenAnswer((value) async {
      return Right(mockListOfMemesModel);
    });
  }

  void setUpFailureForGetMeme() {
    when(mockMemeRemoteDataSource.getMemes()).thenAnswer((value) async {
      return const Left(mockfailure);
    });
  }

  group("Meme Repository test", () {
    test("while calling getMeme we should get list of Mems Models", () async {
      final mockMemeRepositoriesImpl =
          MemeRepositoriesImpl(memeRemoteDataSource: mockMemeRemoteDataSource);

      setUpSuccessForGetMeme();

      final result = await mockMemeRepositoriesImpl.getMemes();

      expect(result.fold((l) => l, (r) => r), mockListOfMemesModel);
    });

    test("while calling getMeme we should get Failure from server", () async {
      final mockMemeRepositoriesImpl =
          MemeRepositoriesImpl(memeRemoteDataSource: mockMemeRemoteDataSource);

      setUpFailureForGetMeme();

      final result = await mockMemeRepositoriesImpl.getMemes();

      expect(result.fold((l) => l, (r) => r), mockfailure);
    });
  });
}
