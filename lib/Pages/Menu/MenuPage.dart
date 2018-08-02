import 'package:easy_wod/Pages/Menu/HeaderMenuComponent.dart';
import 'package:easy_wod/Pages/Menu/ItemMenuComponent.dart';
import 'package:easy_wod/Pages/Perfil/PerfilPage.dart';
import 'package:easy_wod/Pages/Placar/PlacarPage.dart';
import 'package:easy_wod/Pages/Resultados/ResultadosPage.dart';
import 'package:easy_wod/Pages/Sobre/SobrePage.dart';
import 'package:easy_wod/Pages/WodDia/WodDiaPage.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  var indexSelecionado = 1;
  obterBody(){
    switch (indexSelecionado) {
      case 0:
        return new PerfilPage();
      case 1:
        return new WodDiaPage();
      case 2:
        return new ResultadosPage();
      case 3:
        return new PlacarPage();
      case 4:
        return new SobrePage();
      default:
        return new Text("Error");
    }
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    _onSelectItem(int index) {
      setState(() => indexSelecionado = index);
      Navigator.of(context).pop();
    }
    var menus = <Widget>[];
    if(menus.length == 0){
      menus.add(new HeaderMenuComponent(size, "Ana maria sela askdjdjdjjjj ddd ddddd", "https://i.imgur.com/89RJoOr.jpg",0,indexSelecionado, click: _onSelectItem));
      menus.add(new ItemMenuComponent("Wod do dia",1,indexSelecionado, icon:  Icons.alarm_on, click: _onSelectItem));
      menus.add(new ItemMenuComponent("Resultados", 2,indexSelecionado, icon:  Icons.timeline, click: _onSelectItem));
      menus.add(new ItemMenuComponent("Placar", 3,indexSelecionado, icon:  Icons.timer_10, click: _onSelectItem));
      menus.add(new ItemMenuComponent("Sobre",4,indexSelecionado, icon:  Icons.info_outline, click: _onSelectItem));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(""),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: menus
        )
      ),
      body: obterBody(),
    );
  }
}
