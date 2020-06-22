import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: ()=>_mostrarAlert(context),
          elevation: 20.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_downward),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('este es el contenido de una caja de alerta'),
              FlutterLogo(size: 150.0,)
            ],
          ),
          actions: [
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=>Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: ()=>Navigator.of(context).pop(),
            ),
          ],
        );
      }
    );
  }
}
