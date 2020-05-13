import 'package:flutter/material.dart';
import 'package:counter/src/pages/counter_page.dart';

// Creamos un widget de tipo estático
class MyApp extends StatelessWidget {

  // Los widget necesitan un método build para construirse
  @override
  Widget build(context) {
    // Características del widget principal
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quitar la etiqueta "debug" de la app
      home: Center( // Para centrar el contenido
        child: CounterPage(), // Llamamos al layout home_page.dart para cargarlo en el widget principal de la app
      ) ,
    );
  }

}