import 'package:flutter/material.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/pages/start_page.dart';
import 'package:mediana/widgets/settings_card.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Text("Mediana", style: mainTitleText),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Participant: 100', style: descriptionText),
                      Text('IMEA: 9574873884', style: descriptionText),
                      Text('Helpdesk: example@gmail.com',
                          style: descriptionText),
                      Text('Last Sync: 01/03/2021', style: descriptionText),
                    ],
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      _onSettingsPressed();
                    },
                    child: const Icon(Icons.settings),
                    backgroundColor: activeColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Settings Button Pressed
  void _onSettingsPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              decoration: BoxDecoration(
                color: activeColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(50),
                  topRight: const Radius.circular(50),
                ),
              ),
              child: _buildBottomNavigationMenu(),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SettingsCard(
                cardIcon: Icons.sync,
                cardDescription: 'Synchronize',
                onPress: () {
                  print('Synchronize Pressed');
                },
              ),
              SettingsCard(
                cardIcon: Icons.play_arrow,
                cardDescription: 'Demo',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StartPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SettingsCard(
                cardIcon: Icons.volume_up,
                cardDescription: 'Toggle Sound',
                onPress: () {
                  print('Toggle Sound Pressed');
                },
              ),
              SettingsCard(
                cardIcon: Icons.vibration,
                cardDescription: 'Toggle Vibrate',
                onPress: () {
                  print('Toggle Vibrate');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
