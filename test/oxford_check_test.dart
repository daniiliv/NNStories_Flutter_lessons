import 'package:flutter_test/flutter_test.dart';
import 'package:nnstories_lessons/helping/wordgame-version2/lib/oxford_check.dart';

void main() {
  group('Oxford check', () {
    test('"harassment" should be found in dictionary', () async {
      bool result = await OxfordChecking.isWordInOxfordDictionary("harassment");

      expect(result, true);
    });

    test('"some text" shouldn\'t be found in dictionary', () async {
      bool result = await OxfordChecking.isWordInOxfordDictionary("some text");

      expect(result, false);
    });

    test('empty string shouldn\'t be found in dictionary', () async {
      bool result = await OxfordChecking.isWordInOxfordDictionary("");

      expect(result, false);
    });

    test('"asdasdasdasd" shouldn\'t be found in dictionary', () async {
      bool result = await OxfordChecking.isWordInOxfordDictionary("asdasdasdasd");

      expect(result, false);
    });

    test('digits shouldn\'t be found in dictionary', () async {
      bool result = await OxfordChecking.isWordInOxfordDictionary("123");

      expect(result, false);
    });
  });
}
