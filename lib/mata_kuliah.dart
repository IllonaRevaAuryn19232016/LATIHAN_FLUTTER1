import 'package:flutter/material.dart';
import './mata_kuliah_detail.dart';

class MataKuliahForm extends StatefulWidget {
  const MataKuliahForm({super.key});

  @override
  State<MataKuliahForm> createState() => _MataKuliahFormState();
}

class _MataKuliahFormState extends State<MataKuliahForm> {
  final _formKey = GlobalKey<FormState>();
  final _mataKuliahCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _semesterCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mata Kuliah"),
        backgroundColor: Color.fromARGB(255, 10, 173, 255), // warna bg sesuai keinginan
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            mataKuliahField(),
            SizedBox(height: 10),
            sksField(),
            SizedBox(height: 10),
            semesterField(),
            SizedBox(height: 10),
            tombolSimpan()
          ],
        ),
      ),
    );
  }

  Widget mataKuliahField() {
    return TextField(
      decoration: InputDecoration(labelText: "Mata Kuliah"),
      controller: _mataKuliahCtrl,
    );
  }

  Widget sksField() {
    return TextField(
      decoration: InputDecoration(labelText: "SKS"),
      controller: _sksCtrl,
      keyboardType: TextInputType.number,
    );
  }

  Widget semesterField() {
    return TextField(
      decoration: InputDecoration(labelText: "Semester"),
      controller: _semesterCtrl,
    );
  }

  Widget tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MataKuliahDetail(
              mataKuliah: _mataKuliahCtrl.text,
              sks: int.tryParse(_sksCtrl.text) ?? 0,
              semester: _semesterCtrl.text,
            ),
          ),
        );
      },
      child: Text("Simpan"),
    );
  }
}
