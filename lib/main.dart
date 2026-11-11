
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Незмінна частина застосунку
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConfiguratorPage(),
    );
  }
}

// Екран зі змінними параметрами
class ConfiguratorPage extends StatefulWidget {
  const ConfiguratorPage({super.key});

  @override
  State<ConfiguratorPage> createState() =>
      _ConfiguratorPageState();
}

class _ConfiguratorPageState extends State<ConfiguratorPage> {
  double width = 150;
  double height = 150;
  double radius = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ЛР №7 — Варіант 1'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Text('Ширина: ${width.toStringAsFixed(0)}'),
            Slider(
              value: width,
              min: 40,
              max: 240,
              onChanged: (value) {
                setState(() {
                  width = value;
                });
              },
            ),

            Text('Висота: ${height.toStringAsFixed(0)}'),
            Slider(
              value: height,
              min: 40,
              max: 240,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),

            Text('Радіус: ${radius.toStringAsFixed(0)}'),
            Slider(
              value: radius,
              min: 0,
              max: 120,
              onChanged: (value) {
                setState(() {
                  radius = value;
                });
              },
            ),

            const SizedBox(height: 40),

            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(radius),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
