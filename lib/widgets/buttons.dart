import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../texts/apptexts.dart';

//signup button
class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //go to a page
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        width: double.maxFinite,
        height: 50.0,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: AppText(
            text: "Sign up free",
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}

//login buttons
class LogInButton extends StatelessWidget {
  LogInButton({required this.image, required this.text});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 12),
      width: double.maxFinite,
      height: 50.0,
      decoration: BoxDecoration(
        //color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(width: 1, color: Colors.white.withOpacity(0.25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              top: 10,
              bottom: 10,
            ),
            child: Image.asset(
              image,
              scale: 2,
            ),
          ),
          AppText(
            text: text,
            color: Colors.white,
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
