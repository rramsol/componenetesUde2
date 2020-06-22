
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {


  double _valorSlider = 10.0;
  bool _BloquearCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheck(),
            _crearSwitch(),
            Expanded(
              child:  _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Tama;o de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_BloquearCheck) ? null : (valor){
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  _crearImagen() {
    return Image(
      image: NetworkImage('http://www.pngmart.com/files/12/Star-Wars-Darth-Vader-Transparent-Background.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  _crearCheck() {
    /*return Checkbox(
      value: _BloquearCheck,
      onChanged: (valor){
        setState(() {
          _BloquearCheck = valor;
        });
      },
    );*/
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _BloquearCheck,
      onChanged: (valor){
        setState(() {
          _BloquearCheck = valor;
        });
      },
    );
  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _BloquearCheck,
      onChanged: (valor){
        setState(() {
          _BloquearCheck = valor;
        });
      },
    );
  }


}
