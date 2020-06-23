import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();
  bool _IsLoagin = false;

  List<int> _listaNumero = new List();
  int _ultimoITem = 0;

  //creacion de la pagina
  @override
  void initState(){

    super.initState();

    _agregar10();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        //_agregar10();
        fetchData();
      }
    });
  }

  //cuando se destruye la pagina
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      )
    );
  }

  _crearLista() {

    return RefreshIndicator(
      onRefresh:ObetenerPagina1 ,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumero.length,
        itemBuilder: (BuildContext contex,int index){
          final imagen = _listaNumero[index];

          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300?random=$imagen'),
            placeholder: AssetImage('assets/original.gif'),
          );
        },
      ),
    );

  }

  Future<Null> ObetenerPagina1() async{
    final duration = new Duration(seconds: 2);
    new Timer(duration,(){
      _listaNumero.clear();
      _ultimoITem++;
      _agregar10();
    });
    return Future.delayed(duration);
  }

  void _agregar10(){
    for  (var i=1; i<10 ;i++){
      _ultimoITem++;
      _listaNumero.add( _ultimoITem );
    }

    setState(() {});

  }

  Future fetchData() async{

    _IsLoagin = true;
    setState(() {
    });
    final duration = new Duration(seconds: 2);
    return new Timer(duration,respuestaHTTP);

  }

  void respuestaHTTP() {
    _IsLoagin = false;

    _scrollController.animateTo(
        _scrollController.position.pixels+100,
        duration: Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn,
    );


    _agregar10();
  }

  _crearLoading() {
    if( _IsLoagin){
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
    }else{return Container();}

  }





}
