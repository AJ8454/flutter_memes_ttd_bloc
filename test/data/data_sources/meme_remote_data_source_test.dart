import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_memes_ttd_bloc/data/data_sources/remote_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/json_mocks.dart';
import '../../mocks/migrated_mocks.dart';
import 'meme_remote_data_source_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  final mockDio = MockDio();
  final memeRemoteDataSource = MemeRemoteDataSourceImpl(dio: mockDio);

  void setUpSuccessFromGetDio(Response response) {
    when(mockDio.get(any)).thenAnswer((realInvocation) async {
      // assuming data coming from api
      await Future.delayed(const Duration(seconds: 2));
      return response;
    });
  }

  group("meme remote data source get meme test", () {
    test("while calling getMeme we will get Meme Response from server",
        () async {
      setUpSuccessFromGetDio(mockMemeResponse);
      final result = await memeRemoteDataSource.getMemes();

      expect(result.fold((l) => l, (r) => r), mockListOfMemesModel);
    });

    test("while calling getMeme we will get Meme failure from server",
        () async {
      setUpSuccessFromGetDio(mockMemeFailureResponse);
      final result = await memeRemoteDataSource.getMemes();
      debugPrint("$result");
      expect(result.fold((l) => l, (r) => r), mockfailure);
    });
  });
}
