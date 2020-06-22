import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = ' ';
  String _correo = ' ';
  String _fecha = '';

  List<String> _Poderes = ['volar', 'comer', 'programar','jugar'];
  String _opcionSeleccionada = 'volar';

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: <Widget>[
          _creatInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearDate( context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  _creatInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Ingrese nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },

    );

  }

  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
        ),
      hintText: 'Ingrese Correo',
      labelText: 'Correo',
      helperText: 'Correo',
      suffixIcon: Icon(Icons.email),
      icon: Icon(Icons.alternate_email),
      ),
      onChanged: (valor){
      setState(() {
      _correo = valor;
      });
      },
    );

  }

  _crearPassword() {
    return TextField(
     obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Ingrese Pass',
        labelText: 'Password',
        helperText: 'Password',
        suffixIcon: Icon(Icons.network_locked),
        icon: Icon(Icons.content_paste),
      ),
    );

  }


  _crearDate( BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Ingrese Fecha de nacimiento',
        labelText: 'Naciemiento',
        helperText: 'Ingrese su fechad de nacimiento',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_view_day),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    
    DateTime picked = await showDatePicker(
        context: context, 
        initialDate: new DateTime.now(), 
        firstDate: new DateTime(2018), 
        lastDate: new DateTime(2025)
    );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
    
  }


  List<DropdownMenuItem<String>> getOpcionesDropdown(){

    List<DropdownMenuItem<String>> lista = new List();

    _Poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;

  }

  _crearDropdown( ) {
    return Row(
      children: <Widget>[
        DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt){
            setState(() {
              _opcionSeleccionada = opt;
            });
          },
        ),
      ],
    );
  }


  _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre Correo es: $_correo'),
      trailing: Text(_opcionSeleccionada),
    );
  }


}
