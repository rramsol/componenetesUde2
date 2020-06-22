import 'package:flutter/material.dart';

import 'package:flutterappcomponentes/src/pages/alert_page.dart';
import 'package:flutterappcomponentes/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', 'ES'),
      ],
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: getAplicationRoutes(),//voy a traer las rutas al archivo de rutas
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (BuildContext context ) => AlertPage(),
        ); //esto lo hace si no existe la ruta
      },

    );
  }
}
