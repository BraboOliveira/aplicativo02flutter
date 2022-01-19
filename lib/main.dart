import 'package:aplicativo02flutter/screens/contatos.dart';
import 'package:aplicativo02flutter/screens/dashboard.dart';
import 'package:aplicativo02flutter/screens/formulario.dart';
import 'package:flutter/material.dart';

import 'database/database.dart';
import 'models/contato.dart';

void main() {
  runApp(const MyApp());
  save(Contato(0,'alex',1000)).then((id){
    findAll().then((contatos)=>debugPrint(contatos.toString()));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Formulario(),
      // home: Contatos(),
      home: Dashboard(),
    );
  }
}

