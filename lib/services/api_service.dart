import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    // Uri 형식으로 먼저 변환 한다음 http get요청을 할 수 있다.
    final url = Uri.parse("$baseUrl/$today");
    // res값을 response변수에 담는다.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // 응답이 정상적으로 이루어졌다면 response.body은 json형식으로 이루어져있을것이다
      // 따라서 json형식을 decode하여 list에 담는다.
      final List<dynamic> webtoons = jsonDecode(response.body);
      // list에 담긴 요소를 하나씩 꺼내서 반복문을 돌린다.
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }

    throw Error();
  }
}
