import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter"),
          backgroundColor: Color.fromARGB(255, 207, 141, 243),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      );
  }
}


    