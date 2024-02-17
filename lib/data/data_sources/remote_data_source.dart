import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_memes_ttd_bloc/core/errors/failures.dart';
import 'package:flutter_memes_ttd_bloc/data/models/meme_model.dart';

abstract class MemeRemoteDataSource {
  Future<Either<Failure, List<MemeModel>>> getMemes();
}

class MemeRemoteDataSourceImpl extends MemeRemoteDataSource {
  final Dio dio;

  MemeRemoteDataSourceImpl({required this.dio});

  @override
  Future<Either<Failure, List<MemeModel>>> getMemes() async {
    final response = await dio.get('https://api.imgflip.com/get_memes');
    if (response.statusCode == 200) {
      return Right(
          listMemeModelFromJson(jsonEncode(response.data['data']['memes'])));
    } else {
      return Left(Failure(message: "Server Failure"));
    }
  }
}