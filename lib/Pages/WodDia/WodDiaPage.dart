import 'package:easy_wod/Pages/WodDia/SelectWeekDay.dart';
import 'package:flutter/material.dart';

class WodDiaPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new WodDiaPageState();
}

class WodDiaPageState extends State<WodDiaPage>{
  var today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var weekday = today.weekday;
    _backDate(){
      setState(() {
        today = today.add(new Duration(days: -1));
        weekday = today.weekday;     
      });
    }
    _nextDate(){
      setState(() {
        today = today.add(new Duration(days: 1));
        weekday = today.weekday;     
      });
    }
    return new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Text((today.day < 10 ? "0" : "") + today.day.toString() + "/"),
              new Text((today.month < 10 ? "0" : "") + today.month.toString() + "/"),
              new Text(today.year.toString()),
            ],
          ),
          new Flexible(
            flex: 1,
            child: new SelectWeekDay(weekday, _backDate, _nextDate),
          )
        ],
      )
    );
  }
}