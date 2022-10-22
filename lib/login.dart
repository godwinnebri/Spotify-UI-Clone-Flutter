import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/mainscreen.dart';
import 'package:spotify_clone/widgets/buttons.dart';
import 'constants/constants.dart';
import 'texts/apptexts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/loginbg.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            //white icon
            Padding(
              padding: const EdgeInsets.only(top: 327.0),
              child: Image.asset(
                "images/spotifyLogo.png",
                scale: 2,
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //text
            AppTextLarge(
              text: "Millions of songs.",
              color: Colors.white,
              size: 32,
            ),
            AppTextLarge(
              text: "Free on Spotify.",
              color: Colors.white,
              size: 32,
            ),
            const SizedBox(
              height: 30,
            ),
            //button 1

            const SignUpButton(),

            //

            LogInButton(
              text: "Continue with Google",
              image: "images/Google.png",
            ),
            LogInButton(
              text: "Continue with Facebook",
              image: "images/Facebook.png",
            ),
            LogInButton(
              text: "Continue with Apple",
              image: "images/apple.png",
            ),
            const SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
              ),
              child: AppText(
                text: "Log in",
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
