import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/tabs_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoApp(
            title: 'yawa',
            routes: {
              '/': (ctx) => TabsScreen(),
            },
            theme: CupertinoThemeData(
              primaryContrastingColor: Colors.white,
              primaryColor: Colors.lightBlue,
              textTheme: CupertinoTextThemeData().copyWith(
                  // primaryColor:
                  ),
            ),
          )
        : MaterialApp(
            title: 'Yawa',
            theme: ThemeData(
              primarySwatch: Colors.lightBlue,
              fontFamily: 'Raleway',
              textTheme: ThemeData.light().textTheme.copyWith(
                    body1: TextStyle(
                      color: Colors.black,
                    ),
                    title: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
            ),
            routes: {
              '/': (ctx) => TabsScreen(),
            },
            onGenerateRoute: (settings) {
              // print(settings.arguments);
              // return MaterialPageRoute(builder: (ctx) => TabsScreen());
            },
            // onUnknownRoute: (settings) {
            //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
            // },
          );
  }
}
