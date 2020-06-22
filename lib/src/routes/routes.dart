import 'package:flutter/material.dart';

import 'package:flutterappcomponentes/src/pages/alert_page.dart';
import 'package:flutterappcomponentes/src/pages/animated_container.dart';
import 'package:flutterappcomponentes/src/pages/avatar_page.dart';
import 'package:flutterappcomponentes/src/pages/card_page.dart';
import 'package:flutterappcomponentes/src/pages/home_page.dart';
import 'package:flutterappcomponentes/src/pages/input_page.dart';
import 'package:flutterappcomponentes/src/pages/listview_page.dart';
import 'package:flutterappcomponentes/src/pages/slider_page.dart';

//regresa las rutas
Map<String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
    '/'     : (BuildContext contex) =>HomePage(),
    'alert' : (BuildContext contex) => AlertPage(),
    'avatar': (BuildContext contex) => AvatarPage(),
    'card' : (BuildContext contex) => CardPage(),
    'animatedContainer' : (BuildContext contex) => AnimatedContainerPage(),
    'inputs' : (BuildContext contex) => InputPage(),
    'slider' : (BuildContext contex) => SliderPage(),
    'list' : (BuildContext contex) => ListaPage(),
  };
}