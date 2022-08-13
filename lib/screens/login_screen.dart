import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repair/screens/homescreen.dart';
import 'package:repair/screens/signupscreen.dart';
import 'package:repair/style/styles.dart';
import 'package:repair/widgets/textfield_container.dart';

import '../const/const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/login_background.png"))),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo_blue.png"),
                  Text(
                    "REPAIR HOME",
                    style: TextStyle(
                      color: AppColors.primaryBlue,
                      fontSize: FontSizes.xl,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Gap(16),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login to your account",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Gap(16),
                  textFieldContainer("Email", Icons.email),
                  const Gap(16),
                  textFieldContainer("Password", Icons.lock),
                  const Gap(16),
                  SizedBox(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: AppColors.primaryBlue),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: const Text("Sign in"),
                    ),
                  ),
                  const Gap(16),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: AppColors.primaryBlue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
