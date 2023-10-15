import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  // 어느 스타일의 UI를 사용할 것인지 설정해줘야 함
  Widget build(BuildContext context) {
    // ios 느낌의 디자인
    // return CupertinoApp();

    // 구글 느낌의 디자인
    // flutter가 구글에서 만든거라서 이게 더 자연스러움

    return MaterialApp(
      // Scaffold -> app의 구조를 잡아주는 애임 모든 app 에서 필요함
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello flutter!"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
