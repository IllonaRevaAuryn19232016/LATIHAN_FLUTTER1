import 'package:flutter/material.dart';

class MataKuliahDetail extends StatelessWidget {
  final String mataKuliah;
  final int sks;
  final String semester;

  const MataKuliahDetail({
    super.key,
    required this.mataKuliah,
    required this.sks,
    required this.semester,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Mata Kuliah"),
        backgroundColor: Color.fromARGB(255, 10, 173, 255), // warna bg sesuai keinginan
      ),
      body: Center(
        child: Column(
          children: [
            Text("Mata Kuliah: $mataKuliah"),
            Text("SKS: $sks"),
            Text("Semester: $semester")
          ],
        ),
      ),
    );
  }
}
