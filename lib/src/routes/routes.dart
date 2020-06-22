import 'package:flutter/material.dart';

import 'package:flutterappcomponentes/src/pages/alert_page.dart';
import 'package:flutterappcomponentes/src/pages/avatar_page.dart';
import 'package:flutterappcomponentes/src/pages/card_page.dart';
import 'package:flutterappcomponentes/src/pages/home_page.dart';

//regresa las rutas
Map<String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
    '/'     : (BuildContext contex) =>HomePage(),
    'alert' : (BuildContext contex) => AlertPage(),
    'avatar': (BuildContext contex) => AvatarPage(),
    'card' : (BuildContext contex) => CardPage(),
  };
}