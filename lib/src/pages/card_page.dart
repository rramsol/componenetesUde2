import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.tv),
            title: Text('soy el titulo de esta tarjeta'),
            subtitle: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('ok'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }

  _cardTipo2() {

    final card= Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://assets.entrepreneur.com/content/3x2/2000/20160503170129-civilwar.jpeg'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: (Duration(seconds: 1)),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text('Messi el mejor de todos los tiempos'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          )
        ]
      ),
      child: ClipRRect(
        child:  card,
        borderRadius: BorderRadius.circular(30.0),
      ),
     
    );


  }

}
