import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
    
  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = new TextStyle(fontSize: 25.0);
  int _conteo = 0;
  
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de click´s:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],

        ),        
      ),
      floatingActionButton: FloatingActionButton(        
        onPressed: () {
          // para el widget se vuelva a dibujar cambio conteo
          setState( () {
            print('Hola Mundo');
            _conteo++;
          });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


}