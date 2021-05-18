import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/pages/text_page.dart';
import 'package:mediana/widgets/main_button.dart';
import 'package:mediana/widgets/page_indicator.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentSliderValue = 5;

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
                    child: (i == 0 || i == 1 || i == 2)
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
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Slider(
                        value: _currentSliderValue,
                        min: 0,
                        max: 10,
                        activeColor: activeColor,
                        inactiveColor: inactiveColor,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bad',
                      style: sliderText,
                    ),
                    Text(
                      'Good',
                      style: sliderText,
                    ),
                  ],
                ),
              ],
            ),
            MainButton(
              buttonText: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextPage(),
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
