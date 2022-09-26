import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Hub',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xFFFE724C),
      ),
      ),
      home:  const Home(),
    );
  }
}
