import 'package:flutter/material.dart';

void main() {
  runApp(const TugasStateful());
}

class TugasStateful extends StatefulWidget {
  const TugasStateful({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TugasStateful> {
  int _angka = 0;
  Color _warna = Colors.blue;

  void _ubahWarna() {
    setState(() {
      _angka++;
      if (_warna == Colors.indigo) {
        _warna = Colors.yellow;
      } else {
        _warna = Colors.indigo;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertemuan 6',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas Pertemuan 6'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 100,
                color: _warna, // Menggunakan warna yang bisa berubah
              ),
              Text(
                'Tombol diklik: $_angka kali',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahWarna,
                child: const Text('Ubah Warna'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
