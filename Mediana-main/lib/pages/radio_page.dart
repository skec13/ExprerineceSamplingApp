import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/models/radio_model.dart';
import 'package:mediana/pages/slider_page.dart';
import 'package:mediana/widgets/main_button.dart';
import 'package:mediana/widgets/page_indicator.dart';
import 'package:mediana/widgets/radio_item.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  List<RadioModel> sampleData = [];

  @override
  void initState() {
    super.initState();
    sampleData.add(new RadioModel(false, Icons.check, 'Yes'));
    sampleData.add(new RadioModel(false, Icons.check, 'No'));
    sampleData.add(new RadioModel(false, Icons.check, 'Partlly'));
  }

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
                    child: (i == 0 || i == 1)
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
            Container(
              height: 300.0,
              width: double.infinity,
              child: ListView.builder(
                itemCount: sampleData.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    splashColor: bgColor,
                    onTap: () {
                      setState(() {
                        sampleData
                            .forEach((element) => element.isSelected = false);
                        sampleData[index].isSelected = true;
                      });
                    },
                    child: RadioItem(
                      item: sampleData[index],
                    ),
                  );
                },
              ),
            ),
            MainButton(
              buttonText: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SliderPage(),
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
