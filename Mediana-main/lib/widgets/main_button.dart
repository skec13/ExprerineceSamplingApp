import 'package:flutter/material.dart';
import 'package:mediana/constants/constants.dart';

class MainButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  const MainButton({Key key, this.buttonText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: mainButtonText,
            ),
            style: ElevatedButton.styleFrom(
              primary: activeColor,
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 70.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
