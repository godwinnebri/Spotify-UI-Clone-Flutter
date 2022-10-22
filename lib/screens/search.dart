import 'package:flutter/material.dart';
import 'package:spotify_clone/texts/apptexts.dart';
import '../texts/apptexts.dart';

import '../constants/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppTextLarge(
          text: "Search",
          size: 40,
          color: AppColors.grey2,
        ),
      ),
    );
  }
}
