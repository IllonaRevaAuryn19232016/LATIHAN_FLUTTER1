import 'package:flutter/material.dart';
import 'mata_kuliah.dart'; // file form input mata kuliah

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Flutter',
      home: MataKuliahForm(), // halaman pertama adalah form input
    );
  }
}
