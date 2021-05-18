import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/pages/checkbox_page.dart';
import 'package:mediana/widgets/main_button.dart';
import 'package:mediana/widgets/page_indicator.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    child: (i <= 3)
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus volutpat sem ut elit posuere ultrices?',
              style: anwserText,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 170.0),
              child: Container(
                margin: const EdgeInsets.all(12),
                height: 5 * 24.0,
                child: TextField(
                  cursorColor: activeColor,
                  maxLines: 5,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: inactiveColor,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: activeColor),
                    ),
                    hintText: "Enter text",
                  ),
                ),
              ),
            ),
            MainButton(
              buttonText: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckBoxPage(),
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
