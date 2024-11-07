import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gauge Random Value App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GaugeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GaugeScreen extends StatefulWidget {
  const GaugeScreen({super.key});

  @override
  State<GaugeScreen> createState() => _GaugeScreenState();
}

class _GaugeScreenState extends State<GaugeScreen> {
  double _value = 0.0; // Valor del gauge
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Generar un nuevo valor aleatorio cada segundo
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _value = Random().nextDouble() *
            100; // Generar un valor aleatorio entre 0 y 100
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
        child: SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 100, // Ajustado para el rango de 0 a 100
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0,
                  endValue: 33,
                  color: Colors.blue,
                ),
                GaugeRange(
                  startValue: 33,
                  endValue: 66,
                  color: Colors.green,
                ),
                GaugeRange(
                  startValue: 66,
                  endValue: 100,
                  color: Colors.red,
                )
              ],
              pointers: <GaugePointer>[
                NeedlePointer(
                    value: _value), // Mostrar el valor actual en el gauge
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  widget: Text(
                    '${_value.toStringAsFixed(2)}', // Mostrar el valor actual en el gauge
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  angle: 90,
                  positionFactor: 0.5,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
