import 'package:flutter/material.dart';


class ConteoPage extends StatefulWidget {

  @override
  createState() => _ConteoPageState();
  
}

class _ConteoPageState extends State<ConteoPage> {
  
  final _estiloTexto = new TextStyle( fontSize: 24.0 );
  int _count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( 
        title: Text('StateFull Widget'),
        centerTitle: true,
        elevation: 6.0
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador de clicks:'),
            Text('$_count',style: _estiloTexto)
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
    );

  }


  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox( width: 32.0 ),
        FloatingActionButton( 
          child: Icon(Icons.exposure_zero),  onPressed: _reset
        ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( 
          child: Icon(Icons.remove), onPressed: _sustraer
        ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( 
          child: Icon(Icons.add), onPressed: _agregar
        )
      ],
    );
  }


  void _agregar () =>  setState(() => _count++ );
  
  void _sustraer() => setState(() => _count-- );

  void _reset() => setState(() => _count = 0 );
}