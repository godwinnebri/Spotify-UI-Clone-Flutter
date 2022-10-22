import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_clone/constants/constants.dart';
import 'package:spotify_clone/my_flutter_app_icons.dart';
import 'package:spotify_clone/screens/home.dart';
import 'package:spotify_clone/screens/library.dart';
import 'package:spotify_clone/screens/search.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List Pages = [
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff121212),
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: AppColors.grey1,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: ('Home'),
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 15),
              child: Icon(MyFlutterApp.home_filled),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 15),
              child: Icon(MyFlutterApp.search),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Library',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 15),
              child: Icon(MyFlutterApp.library_small),
            ),
          ),
        ],
      ),
    );
  }
}
