import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_memes_ttd_bloc/domain/usecases/get_memes.dart';
import 'package:flutter_memes_ttd_bloc/presentation/bloc/get_meme_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_memes_bloc_test.mocks.dart';

@GenerateMocks([GetMemes])
void main() {
  final mockGetMemes = MockGetMemes();

  void setUpSuccessForGetMemes() {
    when(mockGetMemes.call(any))
        .thenAnswer((realInvocation) async => Right(mockListOfMemes));
  }

  void setUpFailureForGetMemes() {
    when(mockGetMemes.call(any))
        .thenAnswer((realInvocation) async => const Left(mockfailure));
  }

  group("Get meme bloc test", () {
    blocTest<GetMemeBloc, GetMemeState>(
      "meme bloc event & emit added with success",
      build: () => GetMemeBloc(getMemes: mockGetMemes),
      act: (bloc) {
        setUpSuccessForGetMemes();
        bloc.add(const GetMemeEvent.getMemes());
      },
      expect: () => [
        const GetMemeState(loading: true),
        GetMemeState(loading: false, memes: mockListOfMemes),
      ],
    );

    blocTest<GetMemeBloc, GetMemeState>(
      "meme bloc event & emit added with failure",
      build: () => GetMemeBloc(getMemes: mockGetMemes),
      act: (bloc) {
        setUpFailureForGetMemes();
        bloc.add(const GetMemeEvent.getMemes());
      },
      expect: () => [
        const GetMemeState(loading: true),
        const GetMemeState(loading: false, failure: mockfailure),
      ],
    );
  });
}
