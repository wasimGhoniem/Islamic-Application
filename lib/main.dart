import 'package:flutter/material.dart';
import 'package:islami_app/pages/hadeth_screen/hadeth.dart';
import 'package:islami_app/pages/home_screen/home_screen.dart';
import 'package:islami_app/pages/onboarding/onboarding.dart';
import 'package:islami_app/pages/quran_screen/home_screen.dart';
import 'package:islami_app/pages/quran_tap/quran_tap.dart';
import 'package:islami_app/pages/radio_screen/radio.dart';
import 'package:islami_app/pages/sebha_screen/sebha.dart';
import 'package:islami_app/pages/time_screen/time.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranTap.routeName: (context) => QuranTap(),
        Onboarding.routeName: (context) => Onboarding(),
        Hadeth.routeName: (context) => Hadeth(),
        Time.routeName: (context) => Time(),
        RadioApp.routeName: (context) => RadioApp(),
        Sebha.routeName: (context) => Sebha(),
      },
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(),
    );
  }
}
