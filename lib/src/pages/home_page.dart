import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  // Creamos un estilo personalizado para los textos
  final myTextStyle = new TextStyle(fontSize: 25);

  // Variable para el contador
  final counter = 0;

  @override
  Widget build(BuildContext context) {

    // Widget de layout básico
    return Scaffold(

      // Barra superior del layout
      appBar: AppBar(
        title: Text("Stateless"),
        centerTitle: true,
      ),

      // Cuerpo del layout
      body: Center(
        // Widget columna para meterte varios hijos
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrar el contenido de la columna
          // Array de widgets dentro de la columna
          children: <Widget>[
            Text("Número de clicks:", style: myTextStyle),
            Text("$counter", style: myTextStyle),
          ],
        ),
      ),

      // Relocar el botón flotante
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // Botón flotante del layout
      floatingActionButton: FloatingActionButton(
        // Icono o texto del botón
        child: Icon(Icons.add),
        // Acción del botón
        onPressed: () {
          //counter++;
        },
      ),


    );
  }
}