import 'package:flutter/material.dart';
import 'package:quran_app/screens/home.dart';
import 'package:quran_app/screens/splash.dart';
import 'package:quran_app/screens/surah_detail.dart';
import 'package:quran_app/screens/surah_index.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
