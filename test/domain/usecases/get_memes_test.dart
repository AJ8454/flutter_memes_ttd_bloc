import 'package:dartz/dartz.dart';
import 'package:flutter_memes_ttd_bloc/core/usecases/empty_params.dart';
import 'package:flutter_memes_ttd_bloc/domain/repositories/meme_repo.dart';
import 'package:flutter_memes_ttd_bloc/domain/usecases/get_memes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_memes_test.mocks.dart';

@GenerateMocks([MemeRepositories])
void main() {
  final mockMemeRepositories = MockMemeRepositories();
  void setUpSuccessForGetMemes() async {
    when(mockMemeRepositories.getMemes()).thenAnswer((value) async {
      return Right(mockListOfMemes);
    });
  }

  void setUpFailureForGetMemes() async {
    when(mockMemeRepositories.getMemes()).thenAnswer((value) async {
      return const Left(mockfailure);
    });
  }

  group("Get Meme usecase test", () {
    test(
      "while calling getMemes usecases we should get List of Memes",
      () async {
        setUpSuccessForGetMemes();
        // final mockMemeRepositories = MockMemeRepositories();

        GetMemes getMemes = GetMemes(memeRepositories: mockMemeRepositories);
        final result = await getMemes(NoParams());

        expect(
          result.fold((fail) => fail, (success) => success),
          mockListOfMemes,
        );
      },
    );

    test(
      "while calling getMemes usecases we should get Failure",
      () async {
        setUpFailureForGetMemes();
        // final mockMemeRepositories = MockMemeRepositories();

        GetMemes getMemes = GetMemes(memeRepositories: mockMemeRepositories);
        final result = await getMemes(NoParams());

        expect(
          result.fold((fail) => fail, (success) => fail),
          mockfailure,
        );
      },
    );
  });
}
