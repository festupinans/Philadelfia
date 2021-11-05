import 'package:flutter/material.dart';

class pantalla_2 extends StatelessWidget {
  const pantalla_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Philadelphia2'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Hola, ahora con la pantalla 2'),
          ),
          ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.arrow_back),
                Text("Anterior")
      ],
    )
          )
        ],
      ),
    );
  }
}

