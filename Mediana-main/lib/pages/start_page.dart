import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/pages/info_page.dart';
import 'package:mediana/widgets/main_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mediana'),
        backgroundColor: activeColor,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: activeColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 70.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(""),
            Center(
              child: Text(
                'Press Start Survey',
                style: pageTitleText,
              ),
            ),
            MainButton(
              buttonText: 'Start Survey',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
