import 'package:flutter_memes_ttd_bloc/core/errors/failure.dart';
import 'package:flutter_memes_ttd_bloc/data/models/meme_model.dart';
import 'package:flutter_memes_ttd_bloc/domain/entities/memes.dart';

const mockfailure = Failure(message: "Server Failure");

final mockListOfMemes = [
  Meme(
    id: '1',
    name: 'Meme1',
    url: 'https://abcd.com',
    width: 123,
    height: 12,
    boxCount: 2,
  )
];

final mockListOfMemesModel = [
  const MemeModel(
    id: '1',
    name: 'Meme1',
    url: 'https://abcd.com',
    width: 123,
    height: 12,
    boxCount: 2,
  )
];

final mockMemeEntities = Meme(
  id: '1',
  name: 'Meme1',
  url: 'https://abcd.com',
  width: 123,
  height: 12,
  boxCount: 2,
);