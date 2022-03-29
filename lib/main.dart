import 'package:check_mate/utils/constants.dart';
import 'package:check_mate/homeMain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Check Mate',
      theme: ThemeData(
        primarySwatch: colorSwatch,
        primaryColor: secondaryColor,
      ),
      home: HomeMain(),
    );
  }
}
