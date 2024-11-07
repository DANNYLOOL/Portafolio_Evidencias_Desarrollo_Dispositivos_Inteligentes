import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          leading: IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded)),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(icon: Icons.refresh_outlined, onPressed: (){clickCounter = 0; setState(() {});},),
            const SizedBox(height: 3,),
            CustomButton(icon: Icons.plus_one, onPressed: (){clickCounter++; setState(() {});},),
            const SizedBox(height: 3,),
            CustomButton(icon: Icons.exposure_minus_1, onPressed: (){clickCounter>=1?clickCounter--:0; setState(() {});},),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.w100),
            ),
            Text(
              "Click ${clickCounter == 1 ? '' : 's'}",
              style: const TextStyle(fontSize: 10),
            )
          ],
        )));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback ? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed

  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
