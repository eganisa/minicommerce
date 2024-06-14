import 'package:flutter/material.dart';
import 'package:minicommerce/page/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins'
      ),
      routes: {
        '/': (context) => const LandingPage(),

        '/landing-page': (context) => const LandingPage(),
      },
    );
  }
}
