import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final Color color;

  const PageIndicator({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.0,
      width: 30.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
