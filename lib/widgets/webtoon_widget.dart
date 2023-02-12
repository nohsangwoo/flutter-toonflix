import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    // 뭔가를 감지하기 위해서(클릭, 스크롤 등등.. 사용자의 제스쳐를 감지함)
    return GestureDetector(
      onTap: () {
        // 다른 라우트로 이동하는 방법
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                title: title,
                thumb: thumb,
                id: id,
              ),
              // 화면에 렌더링 되는 내용이 아래서부터 위로 나타난다.
              fullscreenDialog: true,
            ));
      },
      child: Column(
        children: [
          Container(
            // 그림이 Container의 영역을 초과하는 경우 어떻게 처리할 것인지.
            // hardEdge는 초과하는 영역은 잘라버린다.
            clipBehavior: Clip.hardEdge,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.5),
                  )
                ]),
            child: Image.network(thumb),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
