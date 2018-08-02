import 'package:flutter/material.dart';

class ItemMenuComponent extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function click;
  final int index;
  final int selectedIndex;
  ItemMenuComponent(this.title, this.index,this.selectedIndex,{this.icon, this.click});
  @override
  State<StatefulWidget> createState()=> new ItemMenuComponentState();
}

class ItemMenuComponentState extends State<ItemMenuComponent>{
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      selected: widget.index == widget.selectedIndex,
      contentPadding: new EdgeInsets.symmetric(horizontal: 30.0),
      title: new Row(
        children: <Widget>[
          widget.icon != null ? new Icon(widget.icon) : new Text(""),
          new Container(
            margin: new EdgeInsets.only(left: 20.0),
            child: Text(widget.title),
          )
        ],
      ),
      onTap: () {
        if(widget.click != null)
          widget.click(widget.index);
      },
    );
  }
}