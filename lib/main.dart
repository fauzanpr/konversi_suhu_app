import 'package:flutter/material.dart';
import 'package:konversi_suhu/components/input.dart';
import 'package:konversi_suhu/components/kelvin_result.dart';
import 'package:konversi_suhu/components/reamur_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final celcius = TextEditingController();

  num _inkelvin = 0;
  num _inreamur = 0;

  void convertTemp() {
    setState(() {
      _inkelvin = double.parse(celcius.text) + 273;
      _inreamur = (0.4 / 5) * double.parse(celcius.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konveter"),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(celcius: celcius),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReamurResult(inreamur: _inreamur),
                  KelvinResult(inkelvin: _inkelvin),
                ],
              ),
              Text(celcius.text.toString()),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: convertTemp,
                  child: const Text('Convert'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
