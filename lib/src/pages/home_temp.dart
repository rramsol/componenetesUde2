import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ComponentesTemp'),
        elevation: 25.0,
        centerTitle: true,
      ),
      body: ListView(
        children: _crearItems()
      ),
    );
  }

  List<Widget> _crearItems () {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Cualquiet cosa'),
        leading: Icon(Icons.account_balance_wallet),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      );
      lista..add(tempWidget)
           ..add(Divider(thickness: 2.0,));
    }

    return lista;
  }//crearItems


}
