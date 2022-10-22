import 'package:flutter/material.dart';
import 'package:spotify_clone/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(scaffoldBackgroundColor: const Color(0xff121212)),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
