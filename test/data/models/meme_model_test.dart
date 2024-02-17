import 'package:flutter_memes_ttd_bloc/data/models/meme_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/json_mocks.dart';

void main() {
  group("meme_model test", () {
    test("MemeModel should return json when using fromJsom method", () async {
      final memeModel = MemeModel.fromJson(mockMemeJson);

      expect(memeModel.id, "181913649");
      expect(memeModel.name, "Drake Hotline Bling");
      expect(memeModel.url, "https://i.imgflip.com/30b1gx.jpg");
      expect(memeModel.width, 1200);
      expect(memeModel.height, 1200);
      expect(memeModel.boxCount, 2);
    });

    test("MemeModel should create json when using toJsom method", () async {
      final memeModel = MemeModel.fromJson(mockMemeJson);
      final resultModel = memeModel.toJson();

      expect(resultModel['id'], mockMemeJson['id']);
      expect(resultModel['name'], mockMemeJson['name']);
      expect(resultModel['url'], mockMemeJson['url']);
      expect(resultModel['width'], mockMemeJson['width']);
      expect(resultModel['height'], mockMemeJson['height']);
      expect(resultModel['box_count'], mockMemeJson['box_count']);
    });
  });
}
