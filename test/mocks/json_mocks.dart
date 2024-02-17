import 'package:dio/dio.dart';
import 'package:flutter_memes_ttd_bloc/core/errors/failures.dart';

Response mockMemeFailureResponse = Response(
  statusCode: 400,
  requestOptions: RequestOptions(path: 'https://api.imgflip.com/get_memes'),
  data: {
    "success": true,
    "data": {},
  },
);

Map<String, dynamic> mockMemeJson = {
  "id": "181913649",
  "name": "Drake Hotline Bling",
  "url": "https://i.imgflip.com/30b1gx.jpg",
  "width": 1200,
  "height": 1200,
  "box_count": 2
};

Response mockMemeResponse = Response(
  statusCode: 200,
  requestOptions: RequestOptions(path: 'https://api.imgflip.com/get_memes'),
  data: {
    "success": true,
    "data": {
      "memes": [
        {
          "id": '1',
          "name": 'Meme1',
          "url": 'https://abcd.com',
          "width": 123,
          "height": 12,
          "box_count": 2
        }
      ]
    }
  },
);


final mockDiofailure = Failure(message: "Server Failure");