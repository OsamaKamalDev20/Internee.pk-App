import 'dart:async';
import 'package:flutter/material.dart';
import 'package:interneepk_app/pages/welcome_page.dart';
import 'package:interneepk_app/utils/constants/images_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage(
                  AppImages.appLogoDark,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
