import 'package:flutter/material.dart';
import './widget/card_widget.dart';

class Parsing extends StatelessWidget {
  const Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Data"),
        backgroundColor: Color.fromARGB(255, 207, 141, 243),
      ),
        body: Column(
        children: [
          CardWidget(judul: "Universitas Bina Sarana Informatika", icon: Icons.account_balance),
          CardWidget(judul: "Parsing Data ", icon: Icons.add_location),
          CardWidget(judul: "Mobile Programming", icon: Icons.android),
        ],
      )
    );
  }
}
