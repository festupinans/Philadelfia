import 'package:flutter/material.dart';

class pantalla_3 extends StatefulWidget {
  const pantalla_3({Key? key}) : super(key: key);

  @override
  _pantalla_3State createState() => _pantalla_3State();
}

class _pantalla_3State extends State<pantalla_3> {

  String txt="";

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
              onChanged: (texto){

                setState(() {
                  txt=texto;
                });

                print(txt);
              },

              autofocus: false,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box_outlined, color: Colors.pink),
                  hintText: "Ingrese su nombre"
              ),
            ),
          ),
          Center(
            child: Text("Hola "+txt, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.pink),),
          )
        ],
      ),
    );
  }
}


