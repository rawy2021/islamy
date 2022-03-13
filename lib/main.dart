import 'package:flutter/material.dart';
import 'package:islami_v1/SuraDetails/sura_deitals.dart';
import 'package:islami_v1/my_theme.dart';

import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islam',
      routes: {
        HomeScreen.routeName: (BuildContext) => HomeScreen(),
        SuraDetails.routeName: (BuildContext) => SuraDetails(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
    );
  }
}
