import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repair/screens/login_screen.dart';

import '../const/const.dart';
import '../style/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void splashTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  void initState() {
    splashTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo_white.png",
            height: 100,
          ),
          Gap(Paddings.lg),
          const Text(
            "REPAIR HOME",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                color: AppColors.lightWhite,
                fontSize: 22),
          )
        ],
      )),
    );
  }
}
