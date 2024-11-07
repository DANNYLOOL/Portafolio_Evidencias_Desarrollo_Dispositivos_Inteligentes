import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PotentiometerData {
  final DateTime time;
  final double value;

  PotentiometerData(this.time, this.value);
}

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gauge Line Chart App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LineChartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LineChartScreen extends StatefulWidget {
  const LineChartScreen({super.key});

  @override
  _LineChartScreenState createState() => _LineChartScreenState();
}

class _LineChartScreenState extends State<LineChartScreen> {
  final List<PotentiometerData> _data = [];
  late ChartSeriesController _chartSeriesController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Generar un nuevo valor aleatorio cada segundo
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _data.add(
            PotentiometerData(DateTime.now(), Random().nextDouble() * 100));
        if (_data.length > 20) {
          _data.removeAt(0);
        }
        _chartSeriesController.updateDataSource(
            addedDataIndex: _data.length - 1);
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
        title: const Text('Potentiometer Line Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SfCartesianChart(
          primaryXAxis: DateTimeAxis(),
          primaryYAxis: NumericAxis(),
          series: <CartesianSeries<PotentiometerData, DateTime>>[
            LineSeries<PotentiometerData, DateTime>(
              dataSource: _data,
              xValueMapper: (PotentiometerData data, _) => data.time,
              yValueMapper: (PotentiometerData data, _) => data.value,
              onRendererCreated: (ChartSeriesController controller) {
                _chartSeriesController = controller;
              },
            ),
          ],
        ),
      ),
    );
  }
}
