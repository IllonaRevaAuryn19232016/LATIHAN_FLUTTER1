import 'package:flutter/material.dart';

class BarisKolomPage extends StatelessWidget {
  const BarisKolomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Baris dan Kolom',
          style: TextStyle(
            fontSize: 20, //ukuran font
            fontWeight: FontWeight.bold, //tebal font
            color: Colors.white, //warna font
          ),
        ),
        backgroundColor: Colors.blue, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(height: 100),
            RowIsi(baris: 'Baris 1'),
            SizedBox(height: 100),
            RowIsi(baris: 'Baris 2'),
            SizedBox(height: 100),
            RowIsi(baris: 'Baris 3'),
          ],
        ),
      ),
    );
  }
}

class RowIsi extends StatelessWidget {
  final String baris;

  const RowIsi({super.key, required this.baris});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('$baris, Kolom 1'),
        Text('$baris, Kolom 2'),
        Text('$baris, Kolom 3'),
      ],
    );
  }
}
