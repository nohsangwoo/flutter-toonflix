import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    // Uri 형식으로 먼저 변환 한다음 http get요청을 할 수 있다.
    final url = Uri.parse("$baseUrl/$today");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }

    throw Error();
  }
}
