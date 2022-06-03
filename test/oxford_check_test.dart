import 'package:flutter_test/flutter_test.dart';
import 'package:nnstories_lessons/helping/oxford_check.dart';

void main() {
  group('Oxford check', () {
    test('"harassment" should be found in dictionary', () async {
      bool result = await isWordInOxfordDictionary("harassment");

      expect(result, true);
    });

    test('"some text" shouldn\'t be found in dictionary', () async {
      bool result = await isWordInOxfordDictionary("some text");

      expect(result, false);
    });

    test('empty string shouldn\'t be found in dictionary', () async {
      bool result = await isWordInOxfordDictionary("");

      expect(result, false);
    });

    test('"asdasdasdasd" shouldn\'t be found in dictionary', () async {
      bool result = await isWordInOxfordDictionary("asdasdasdasd");

      expect(result, false);
    });

    test('digits shouldn\'t be found in dictionary', () async {
      bool result = await isWordInOxfordDictionary("123");

      expect(result, false);
    });
  });
}
