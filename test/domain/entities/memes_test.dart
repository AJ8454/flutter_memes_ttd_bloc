import 'package:flutter_test/flutter_test.dart';

import '../../mocks/migrated_mocks.dart';

void main() {
  test('meme entity test', () async {
    expect(mockMemeEntities.id, '1');
    expect(mockMemeEntities.name, 'Meme1');
    expect(mockMemeEntities.url, 'https://abcd.com');
    expect(mockMemeEntities.width, 123);
    expect(mockMemeEntities.height, 12);
    expect(mockMemeEntities.boxCount, 2);
  });
}
