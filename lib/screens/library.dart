import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../texts/apptexts.dart';

class LibraryScreen extends StatefulWidget {
  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppTextLarge(
          text: "Library",
          size: 40,
          color: AppColors.grey2,
        ),
      ),
    );
  }
}
