import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Eliminamos la marca de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text('Taller Flutter Mejorado'),
          backgroundColor: Colors.teal.shade700, // Color mejorado
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado principal
              Text(
                '¡Bienvenidos al Taller!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 16),

              // Subtítulo con estilo
              Text(
                'Explora Flutter con este proyecto mejorado.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 24),

              // Cambiamos los íconos y añadimos más elementos visuales
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star, // Ícono mejorado
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.thumb_up, // Nuevo ícono
                    color: Colors.blue,
                    size: 50,
                  ),
                  Icon(
                    Icons.lightbulb, // Nuevo ícono
                    color: Colors.yellow,
                    size: 50,
                  ),
                ],
              ),
              SizedBox(height: 32),

              // Botón interactivo con funcionalidad ampliada
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _showSnackbar(context, '¡Botón presionado!');
                  },
                  child: Text('Presiona aquí'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // Color del botón
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 32),

              // Contenedor estilizado
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.teal.shade100,
                  ),
                ),
                child: Text(
                  'Este es un contenedor personalizado que muestra un diseño atractivo y limpio.',
                  style: TextStyle(fontSize: 16, color: Colors.teal.shade900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
