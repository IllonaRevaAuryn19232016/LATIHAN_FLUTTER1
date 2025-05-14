import 'package:flutter/material.dart'; 
import './widget/card_widget.dart'; 
import './halaman_kedua.dart'; 
  
class HalamanPertama extends StatelessWidget { 
  const HalamanPertama({super.key}); 
   
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(
        title: Text("Halaman Pertama"),
        backgroundColor: Color.fromARGB(255, 243, 111, 192),
      ), 
      body: Center( 
        child: GestureDetector( 
          child: CardWidget(icon: Icons.ad_units, judul:"Halaman Kedua"), 
          onTap: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HalamanKedua())); 
          },
        ),
      ),
    );
  }
}

