import 'package:flutter/material.dart';

import 'formulario.dart';

class Contatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Rafael',
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => Formulario(),
                ),
              )
              .then(
                (novoContato) => debugPrint(novoContato.toString()),
              );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
