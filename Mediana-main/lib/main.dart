import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'constants/constants.dart';
import 'pages/main_page.dart';

void main() {
  /* debugPaintSizeEnabled = true; */
  runApp(MedianaApp());
}

class MedianaApp extends StatelessWidget {
  const MedianaApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mediana",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: activeColor,
        scaffoldBackgroundColor: bgColor,
      ),
      home: MainPage(),
    );
  }
}
