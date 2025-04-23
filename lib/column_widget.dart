import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Column"),
        backgroundColor: const Color.fromARGB(255, 207, 141, 243),
      ),
      body: Column(
        children: const[
            Text(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontFamily: 'Roboto'
              ),
              "Kolom 1"),
            Text("Kolom 2"),
            Text("Kolom 3"),        
          ],
        ),
    );
  }
}                                                    