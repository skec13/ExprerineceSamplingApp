import 'package:flutter/material.dart';
import 'package:mediana/constants/constants.dart';
import 'package:mediana/models/radio_model.dart';

class RadioItem extends StatelessWidget {
  final RadioModel item;

  const RadioItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 15.0),
      child: new Row(
        children: <Widget>[
          new Container(
            height: 25.0,
            width: 25.0,
            child: new Center(
              child: new Icon(
                item.icon,
                color: bgColor,
                size: 20.0,
              ),
            ),
            decoration: new BoxDecoration(
              color: item.isSelected ? activeColor : bgColor,
              border: new Border.all(
                  width: 1.0,
                  color: item.isSelected ? activeColor : notSelectedColor),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: new Text(item.text,
                style:
                    item.isSelected ? settingsIconText : notSelectedItemText),
          )
        ],
      ),
    );
  }
}
