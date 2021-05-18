import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/pages/radio_page.dart';
import 'package:mediana/widgets/main_button.dart';
import 'package:mediana/widgets/page_indicator.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
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
          children: [
            Row(
              children: [
                for (int i = 0; i < 6; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: (i == 0)
                        ? PageIndicator(
                            color: activeColor,
                          )
                        : PageIndicator(
                            color: inactiveColor,
                          ),
                  ),
              ],
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus volutpat sem ut elit posuere ultrices. Integer ullamcorper dolor velit, nec ultricies ligula placerat non. Quisque velit nisi, aliquet nec accumsan in, elementum a turpis.',
              style: anwserText,
            ),
            MainButton(
              buttonText: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RadioPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
