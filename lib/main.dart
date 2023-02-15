import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_core/firebase_core.dart";
import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import "firebase_options.dart";

import 'package:primerproyecto/Usuario.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
class Home extends StatefulWidget {
  @override
  HomeStart createState() => HomeStart();
}

class HomeStart extends State<Home>{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Bienvenido',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Linea de Profundización II'),

            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: Container(
                      width: 300,
                      height: 300,
                      child: Image.asset('img/img.png'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50, left: 500, right: 500),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          labelText: 'Email Usuario',
                          hintText: 'Digite email de usuario'
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50, left: 500, right: 500),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          labelText: 'Password Usuario',
                          hintText: 'Digite contraseña de usuario'
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:40, left:10, right:10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: StadiumBorder()
                    ),
                    onPressed: (){
                      print("Botón presionado");
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> usuario()));
                  },
                    child: Text("Enviar"),
                  ),
                  ),
                ],
              ),
            ),
            ),
        );
    }
}