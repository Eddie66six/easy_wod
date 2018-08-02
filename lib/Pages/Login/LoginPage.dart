import 'package:easy_wod/Pages/Login/LoginButtonComponent.dart';
import 'package:easy_wod/Pages/Menu/MenuPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          height: size.height,
          width: size.width,
          decoration: new BoxDecoration(color: new Color.fromRGBO(227,71,18, 1.0)),
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //espaço do topo
                new Container(
                  height: size.height/ (size.height < 550 ? 6.5 : 4),
                  child: new Text(""),
                ),
                //logo
                new Container(
                  width: size.width,
                  margin: new EdgeInsets.only(bottom: 50.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Text("Logo", style: new TextStyle(fontSize: 36.0),),
                      new Text("12345", style: new TextStyle(fontSize: 16.0),),
                    ],
                  ),
                ),
                //form
                new TextField(decoration: new InputDecoration(hintText: "Email"), keyboardType: TextInputType.emailAddress,),
                new TextField(decoration: new InputDecoration(hintText: "Senha"),obscureText: true,),
                new Container(
                  margin: new EdgeInsets.only(top: 10.0),
                  child: new LoginButtonComponent(
                    "Vamos lá",
                    icon: Icons.arrow_forward,
                    onTap: (){Navigator.pushAndRemoveUntil(context,new MaterialPageRoute(builder: (context) => new MenuPage()),(Route<dynamic> route) => false);},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
