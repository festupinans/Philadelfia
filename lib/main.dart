import 'package:flutter/material.dart';
import 'package:philadelfia/Pantallas/pantalla_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Philadelphia',

      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Philadelphia"),
      ),

      body: ListView(
        children: [
          const Text('Hola Guapa',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,
              backgroundColor: Colors.green, fontWeight: FontWeight.bold,
              color: Colors.white)),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(20.0),
            width: 250,
            child: const Text('Que se llama Aniee',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,
                backgroundColor: Colors.green, fontWeight: FontWeight.bold,
                color: Colors.white)),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(20.0),
            child: const Text('¿Como te encuentras el dia de hoy?',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,
                backgroundColor: Colors.green, fontWeight: FontWeight.bold,
                color: Colors.white)),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(5.0),
            child: Image.network('https://image.freepik.com/free-photo/top-view-fresh-nuts-dark-surface_140725-75307.jpg'),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(5.0),
            child: Image.network('https://image.freepik.com/free-vector/war-theme-with-helmet-weapons_1308-33249.jpg'),
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(5.0),
            child: Image.network('https://image.freepik.com/free-vector/original-coffee-label-with-transport_24877-54445.jpg'),
          ),
          ElevatedButton(
              onPressed: (){
                var saludo='Hola Sara Juliana';
                print(saludo);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>pantalla_2()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Siguiente'),
                  Icon(Icons.arrow_forward_sharp)
                ],
              )
          )
        ],
      )
    );
  }
}
