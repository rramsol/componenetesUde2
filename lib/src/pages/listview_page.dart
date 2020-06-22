import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumero = new List();
  int _ultimoITem = 0;

  @override
  void initState(){
    super.initState();
    _agregar10();


    _scrollController.addListener(() {

      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _agregar10();
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _crearLista(),
    );
  }

  _crearLista() {

    return ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumero.length,
        itemBuilder: (BuildContext contex,int index){
          final imagen = _listaNumero[index];

          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300?random=$imagen'),
            placeholder: AssetImage('assets/original.gif'),
          );
        },
    );

  }

  void _agregar10(){
    for  (var i=1; i<10 ;i++){
      _ultimoITem++;
      _listaNumero.add( _ultimoITem );
    }

    setState(() {});

  }


}
