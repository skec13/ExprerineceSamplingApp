import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediana/constants/check_list.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/models/checkbox_model.dart';
import 'package:mediana/pages/submit_page.dart';
import 'package:mediana/widgets/check_tile.dart';
import 'package:mediana/widgets/main_button.dart';
import 'package:mediana/widgets/page_indicator.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  List<CheckBoxModel> checkModel = getValues();

  void itemChange(bool val, int index) {
    setState(() {
      checkModel[index].isSelected = val;
    });
  }

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
                    child: (i <= 4)
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
                itemCount: checkModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      CheckList(
                        activeColor: activeColor,
                        title: Text(
                          checkModel[index].text,
                          style: descriptionText,
                        ),
                        value: checkModel[index].isSelected,
                        onChanged: (bool val) {
                          itemChange(val, index);
                        },
                      ),
                    ],
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
                    builder: (context) => SubmitPage(),
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
