import 'package:flutter/material.dart';
import 'tugas_stateful.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Flutter',
      home: TugasStateful(), 
    );
  }
}
