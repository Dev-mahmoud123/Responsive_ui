import 'dart:io';

import 'package:flutter/material.dart';
import 'desktop_screens/desktop_screen.dart';
import 'mobile_screen/mobile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.minWidth.toInt() <= 500) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),
                child: const MobileScreen());
          }
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.25),
              child: const DesktopScreen());
        },
      ),

    );
  }
}
