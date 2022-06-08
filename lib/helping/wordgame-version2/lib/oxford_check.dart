import 'package:http/http.dart' as http;

class OxfordChecking {
  static Future<bool> isWordInOxfordDictionary(String word) async {
    bool result = false;

    const String appId = "51476dde";
    const String appKey = "d130aa3cbe7fb48cbaf8d9494126a679";

    const String language = "en";
    final String wordId = word.toLowerCase();

    final String uri =
        "https://od-api.oxforddictionaries.com:443/api/v2/lemmas/$language/$wordId";

    var response = await http.get(
      Uri.parse(uri),
      headers: <String, String>{
        'app_id': appId,
        'app_key': appKey,
      },
    );

    // Если код состояния 200, значит слово было найдено в словаре.
    // В ином случае возвращается код 404, то есть слово не найдено.
    if (response.statusCode == 200) {
      result = true;
    }

    return result;
  }
}
