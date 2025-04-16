import 'package:flutter/material.dart';
import 'package:project_onoon_flutter/splash_screen.dart';

void main() {
  runApp(const OnoonApp());
}

class OnoonApp extends StatelessWidget {
  const OnoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onoon',
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // 시작은 Splash
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7EC),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ 로고 영역
            Container(
              padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 24.0),
              child: Image.asset(
                'assets/logo_onoon.png',
                height: 120, // ✅ 여기서 크게 조정 가능 (120~140까지도 가능)
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),

            // ✅ 아래에 내용
            Expanded(
              child: Center(
                child: Text(
                  'Welcome to Onoon!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF2A3748),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: (index) {
          // 나중에 setState 있는 버전으로 교체 가능
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: '운세'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
        ],
      ),
    );
  }
}