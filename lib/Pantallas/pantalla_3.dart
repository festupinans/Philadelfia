import 'package:flutter/material.dart';

class pantalla_3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario / Pantalla 3"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              autofocus: false,
                  keyboardType: TextInputType.number,
            ),
          ),
          Center(
            child: Text("Hola", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink),),
          )
        ],
      ),
    );
  }
}
