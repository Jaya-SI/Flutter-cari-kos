import 'package:cari_kos/pages/detail_page.dart';
import 'package:cari_kos/pages/error_page.dart';
import 'package:cari_kos/pages/home_page.dart';
import 'package:cari_kos/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
        '/error-page': (context) => ErrorPage(),
      },
    );
  }
}
