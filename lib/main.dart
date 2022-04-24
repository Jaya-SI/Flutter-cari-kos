
import 'package:cari_kos/pages/error_page.dart';
import 'package:cari_kos/pages/home_page.dart';
import 'package:cari_kos/pages/splash_page.dart';
import 'package:cari_kos/providers/recomended_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecomendedProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/home': (context) => HomePage(),
          '/error-page': (context) => ErrorPage(),
        },
      ),
    );
  }
}
