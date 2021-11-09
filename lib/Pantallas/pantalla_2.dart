import 'package:flutter/material.dart';
import 'package:philadelfia/Pantallas/pantalla_3.dart';

class pantalla_2 extends StatelessWidget {
  const pantalla_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text('Philadelphia2'),
        ),

        body: PageView(
          physics: BouncingScrollPhysics(),
          children: [
            principal(),
            imagen(url: 'https://image.freepik.com/free-photo/top-view-fresh-nuts-dark-surface_140725-75307.jpg'),
            imagen(url: 'https://empresas.blogthinkbig.com/wp-content/uploads/2019/11/Imagen3-245003649.jpg?w=800'),
            imagen(url: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/5eeea355389655.59822ff824b72.gif')
          ],
        ),
        

        bottomNavigationBar: barraInferior()

    );
  }
}

class principal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );

  }
}

class barraInferior extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.deepPurple,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.amber,

      onTap: (index){
        if(index==0){
          Navigator.pop(context);
        }else if(index==1){
          var t=DateTime.now();
          print(t);
        }else{
          print("Va a pantalla 3");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>pantalla_3()));
        }
      },

      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label:"Anterior"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: "Hoy"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: "Siguiente"
        )
      ],
    );
  }
}

class imagen extends StatelessWidget {
  final String url;
  const imagen({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blue,
      child: Image.network(url),
    );
  }
}
