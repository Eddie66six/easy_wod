import 'package:flutter/material.dart';

class HeaderMenuComponent extends StatefulWidget {
  final Size size;
  final String profileName;
  final String urlImage;
  final Function click;
  final int index;
  final int selectedIndex;
  HeaderMenuComponent(this.size, this.profileName, this.urlImage,this.index,this.selectedIndex,{this.click});

  @override
  State<StatefulWidget> createState() => new HeaderMenuComponentState();
}

class HeaderMenuComponentState extends State<HeaderMenuComponent>{
  @override
  Widget build(BuildContext context) {
    return new DrawerHeader(
        decoration: new BoxDecoration(color: Colors.red),
        margin: new EdgeInsets.all(0.0),
        padding: new EdgeInsets.all(0.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new InkWell(
              child: new Container(
                  height: widget.size.height / 7,
                  width: widget.size.height / 7,
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(widget.urlImage),
                  )),
            ),
            new InkWell(
              onTap: () {
                if(widget.click != null)
                  widget.click(widget.index);
                },
              child: new Container(
                  margin: new EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(Icons.person_pin, color: widget.index == widget.selectedIndex ? Colors.blue : Colors.black),
                      new Flexible(
                        child: new Container(
                          child: new Text(widget.profileName,
                              style: new TextStyle(fontSize: 18.0, color: widget.index == widget.selectedIndex ? Colors.blue : Colors.black),
                              overflow: TextOverflow.ellipsis),
                        ),
                      )
                    ],
                  )
              ),
            )
          ],
        ));
  }

}