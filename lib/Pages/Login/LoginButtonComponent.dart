import 'dart:async';

import 'package:flutter/material.dart';

class LoginButtonComponent extends StatefulWidget {
  final String text;
  final IconData icon;
  final Function onTap;
  LoginButtonComponent(this.text, {this.icon, this.onTap});

  @override
  State<StatefulWidget> createState() => new LoginButtonComponentState();
}

class LoginButtonComponentState extends State<LoginButtonComponent> {
  bool _shadow = false;
  @override
  Widget build(BuildContext context) {
    if (_shadow) {
      new Future.delayed(new Duration(milliseconds: 300), () {
        setState(() {
          _shadow = false;
        });
      });
    }
    return new InkWell(
      onTap: () {
        setState(() {
          _shadow = true;
        });
        if (widget.onTap != null) widget.onTap();
      },
      child: new Container(
        padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: new BoxDecoration(
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: _shadow ? Colors.black26 : Colors.transparent,
                offset: new Offset(1.0, 2.0),
                blurRadius: 5.0,
              ),
            ],
            borderRadius: new BorderRadius.circular(5.0),
            color: new Color.fromRGBO(110, 142, 255, 1.0 - (_shadow ? 0.02 : 0.0))),
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text(
              widget.text,
              style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
            widget.icon != null
                ? new Container(
                    child: Icon(widget.icon),
                    margin: new EdgeInsets.only(left: 5.0),
                  )
                : new Text("")
          ],
        ),
      ),
    );
  }
}
