import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

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
          backgroundColor: const Color(0xFF181818),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Sam",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcom back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
