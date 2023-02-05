# toonflix

# about api

- base url: https://webtoon-crawler.nomadcoders.workers.dev

- '/today': Returns today's comics
- '/:id': Returns a comic's information by 'id'
- '/:id/episodes': Returns the latest episodes for a comic by 'id'

# html 파싱용 api 만드는법

- ref: https://developers.cloudflare.com/workers/runtime-apis/html-rewriter/

# AppBar

- 상단의 bar를 말한다.

# pub.dev

- Dart, Flutter 공식 패키지 보관소

# http

- ref: https://pub.dev/packages/http

cli를 직접입력하여 인스톨 하는 방법이 있고, pubspec.yaml에 추가하여 인스톨하는 방법이 있다.

- vsc에서 pubspec.yaml에 인스톨할 패키지를 추가하면 상단에 get packages를 눌러서 인스톨 할 수 있다.

- 패키지를 사용할때 메소드명이 너무 일반적이라 충돌이 날 수 있다. 그럴때는 as를 사용하여 별칭을 지정해준다.

```
<!-- 예시 -->
import 'package:http/http.dart' as http;
```
