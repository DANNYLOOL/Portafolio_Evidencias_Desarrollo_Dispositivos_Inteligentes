import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mqtt_humidity_level/liquid_progress_indicator/liquid_circular_progress_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Value App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HumidityLevelScreen(),
    );
  }
}

class HumidityLevelScreen extends StatefulWidget {
  const HumidityLevelScreen({super.key});

  @override
  HumidityLevelScreenState createState() => HumidityLevelScreenState();
}

class HumidityLevelScreenState extends State<HumidityLevelScreen> {
  double _humidityLevel = 0.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Generar un nuevo valor aleatorio entre 0 y 1 cada segundo
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _humidityLevel =
            Random().nextBool() ? 1.0 : 0.0; // Generar 0 o 1 aleatoriamente
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancelar el temporizador cuando se destruye el widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Value Gauge'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: LiquidCircularProgressIndicator(
              value: _humidityLevel, // Ajustado para mostrar 0 o 1
              valueColor: const AlwaysStoppedAnimation(Colors.blue),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              borderColor: Colors.blue,
              borderWidth: 5.0,
              direction: Axis.vertical,
              center: Text(
                '${(_humidityLevel * 100).toStringAsFixed(0)}%', // Mostrar valor en porcentaje (0% o 100%)
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
