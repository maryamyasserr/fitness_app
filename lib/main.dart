import 'package:fitness_app/core/theme/app_theme.dart';
import 'package:fitness_app/home/home_screen.dart';
import 'package:fitness_app/pages/screen_1/screen_one.dart';
import 'package:fitness_app/pages/screen_2/screen_two.dart';
import 'package:fitness_app/pages/screen_3/screen_three.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightMode,
    );
  }
}
