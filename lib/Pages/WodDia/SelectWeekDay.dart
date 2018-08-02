import 'package:flutter/material.dart';

class SelectWeekDay extends StatefulWidget {
  final int selectedIndex;
  final Function clickBack;
  final Function clickForward;
  SelectWeekDay(this.selectedIndex,this.clickBack, this.clickForward);
  @override
  State<StatefulWidget> createState() => new SelectWeekDayState();
}

class SelectWeekDayState extends State<SelectWeekDay> {
  var normalColor = Colors.grey[400];
  var selectedColor = Colors.grey[500];
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new GridView.count(
          crossAxisCount: 9,
          childAspectRatio: 1.0,
          children: <Widget>[
            new InkWell(
              onTap: (){if(widget.clickBack != null)widget.clickBack();},
              child: new Container(
                child: new Icon(Icons.arrow_back),
                decoration: new BoxDecoration(color: normalColor, border: new Border(right: new BorderSide(color: Colors.black26)))
                ),
            ),
            new InkWell(
              child: new Container(
                child: new Center(child: new Text("Dom")),
                decoration: new BoxDecoration(
                  color: widget.selectedIndex == 7 ? selectedColor : normalColor,
                  border: new Border(right: new BorderSide(color: Colors.black26))
                )
              ),
            ),
            new InkWell(
              child: new Container(
                child: new Center(child: new Text("Seg")),
                decoration: new BoxDecoration(
                  color: widget.selectedIndex == 1 ? selectedColor : normalColor,
                  border: new Border(right: new BorderSide(color: Colors.black26))
                )
              ),
            ),
            new InkWell(
              child: new Container(
                child: new Center(child: new Text("Ter")),
                decoration: new BoxDecoration(
                  color: widget.selectedIndex == 2 ? selectedColor : normalColor,
                  border: new Border(right: new BorderSide(color: Colors.black26))
                )
              ),
            ),
            new InkWell(
              child: new Container(
                child: new Center(child: new Text("Qua")),
                decoration: new BoxDecoration(
                  color: widget.selectedIndex == 3 ? selectedColor : normalColor,
                  border: new Border(right: new BorderSide(color: Colors.black26))
                )
              ),
            ),
            new InkWell(
              child: new Container(
                child: new Center(child: new Text("Qui")),
                decoration: new BoxDecoration(
                  color: widget.selectedIndex == 4 ? selectedColor : normalColor,
                  border: new Border(right: new BorderSide(color: Colors.black26))
                )
              ),
            ),
            new InkWell(
              child: new Container(
                child: new Center(child: new Text("Sex")),
                decoration: new BoxDecoration(
                  color: widget.selectedIndex == 5 ? selectedColor : normalColor,
                  border: new Border(right: new BorderSide(color: Colors.black26))
                )
              ),
            ),
            new InkWell(
              child: new Container(
                child: new Center(child: new Text("Sab")),
                decoration: new BoxDecoration(
                  color: widget.selectedIndex == 6 ? selectedColor : normalColor,
                  border: new Border(right: new BorderSide(color: Colors.black26))
                )
              ),
            ),
            new InkWell(
              onTap: (){if(widget.clickForward != null)widget.clickForward();},
              child: new Container(
                child: new Icon(Icons.arrow_forward),
                decoration: new BoxDecoration(color: normalColor)
                ),
            ),
          ],
        )
    );
  }
}
