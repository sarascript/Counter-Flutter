import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  // Estado del widget dinámico
  @override
  createState() => _CounterPageState();
}

// Código del widget
class _CounterPageState extends State<CounterPage> {

  // Creamos un estilo personalizado para los textos
  final _myTextStyle = new TextStyle(fontSize: 25);

  // Variable para el contador
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    // Widget de layout básico
    return Scaffold(

      // Barra superior del layout
      appBar: AppBar(
        title: Text("Stateful"),
       centerTitle: true,
     ),

      // Cuerpo del layout
      body: Center(
        // Widget columna para meterte varios hijos
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrar el contenido de la columna
          // Array de widgets dentro de la columna
          children: <Widget>[
            Text("Número de clicks:", style: _myTextStyle),
            Text("$_counter", style: _myTextStyle),
          ] ,
        ),
      ),

      // Relocar el botón flotante
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // Botón flotante del layout
      floatingActionButton: _createButtons() // Función para crear varios botones flotantes

    );

  }

  // Función para crear varios botones flotantes
  Widget _createButtons() {
    // Widget fila para meterte varios hijos
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, // Colocar el contenido de la fila a la derecha
      // Array de widgets dentro de la fila
      children: <Widget>[
        // Widgets de botones flotantes
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset ), // Función sin paréntesis porque sólo la referenciamos, no lanzamos
        Expanded(child: SizedBox()), // Separación máxima
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _remove ),
        SizedBox(width: 5.0,), // Separación
        FloatingActionButton( child: Icon(Icons.add), onPressed: _add ),
      ]
    );
  }

  // Función para sumar
  void _add() {
    setState( () => _counter++ );
  }

  // Función para restar
  void _remove() {
    setState( () => _counter-- );
  }

  // Función para resetear
  void _reset() {
    setState( () => _counter = 0 );
  }

}