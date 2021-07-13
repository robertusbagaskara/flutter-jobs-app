import 'package:flutter/material.dart';
import 'package:future_job/pages/splash_page.dart';
import 'package:future_job/pages/started_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Future Job',
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => StartedPage(),
        '/home': (context) => StartedPage(),
      },
    );
  }
}
