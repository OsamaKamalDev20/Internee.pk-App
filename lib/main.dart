import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interneepk_app/splash_screen/splash_screen.dart';
import 'package:interneepk_app/utils/constants/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        fontFamily: 'Inter',
      ),
      home: SplashScreen(),
    );
  }
}
