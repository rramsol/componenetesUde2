import 'dart:convert'; //convierte el json a map
import 'package:flutter/services.dart' show rootBundle;//leer la ruta del json

class _MenuProvider {

  List<dynamic> opciones = [];


  Future<List<dynamic>> cargarData() async{
     final respuesta = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(respuesta);
     //print(dataMap['rutas']);
     opciones = dataMap['rutas'];

     return opciones;
   }

}

final menuProvider = new _MenuProvider();