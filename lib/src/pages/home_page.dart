import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle( fontSize: 24.0 );
  final count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( 
        title: Text('Título'),
        centerTitle: true,
        elevation: 6.0
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador de clicks:'),
            Text('$count',style: estiloTexto)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {
          //count = count + 1;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}