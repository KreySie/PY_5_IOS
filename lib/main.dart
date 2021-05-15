import 'package:flutter/material.dart';

void main() => runApp(MyCardApp());

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Johan CardApp'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          ], //fin Widget
        ), //Fin AppBar
        body: Container(
          child: ListView(
            children: <Widget>[
              _items('https://raw.githubusercontent.com/KreySie/MisImagenes/main/Disco.jpg', 'Disco Duro', 'Disco Duro 1 TB'),
              SizedBox(height: 5.0), // Fin Item1
              _items('https://raw.githubusercontent.com/KreySie/MisImagenes/main/RAM.jpg', 'Memoria RAM', '32 GB RAM'),
              SizedBox(height: 5.0), //Fin Ietm 2
              _items('https://raw.githubusercontent.com/KreySie/MisImagenes/main/Mouse.jpg', 'Mouse', 'Mouse con botones laterales'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/KreySie/MisImagenes/main/Monitor.jpg', 'Monitor', 'Monitor curvo SAMSUNG'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/KreySie/MisImagenes/main/Teclado.jpg', 'Teclado', 'Teclado RGB'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/KreySie/MisImagenes/main/Audifonos.jpg', 'Audifonos', 'Audifonos con Soporte 3D'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/KreySie/MisImagenes/main/Foto.jpg', 'Mi imagen', 'Foto de Perfil'),
            ], //Fin Widget []
          ), //Fin ListView
        ), //Fin de Container
      ), //Fin Scaffold
    ); //Fin MaterialApp
  } //Fin widget

  Widget _items(String url, String producto, String subt) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.red[200],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subt, style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin MyCardApp
