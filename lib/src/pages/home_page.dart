
import 'package:flutter/material.dart';
import 'package:flutterappcomponentes/src/pages/alert_page.dart';

import 'package:flutterappcomponentes/src/providers/menu_provider.dart';
import 'package:flutterappcomponentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
        elevation: 3.0,
      ),
      body:_lista(),
    );
  }

  Widget _lista() {

   // print(menuProvider.opciones);
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context,AsyncSnapshot<List<dynamic>> snapshot){
          print('builder');
          print(snapshot.data);
          return ListView(
            children: _listaItems(snapshot.data, context),
          );
        }
    );


  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.print),
        onTap: (){

          /*final route = MaterialPageRoute(
            builder: (context) => AlertPage()
          );*/
          //Navigator.push(context,route);

          Navigator.pushNamed(context, element['ruta']);


        },
      );
     opciones.add(widgetTemp);
     opciones.add(Divider());
    });

    return opciones;
  }


}//Stateless
