import 'package:aplicativo02flutter/models/contato.dart';
import 'package:flutter/material.dart';


class Formulario extends StatelessWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nomeCompleto = TextEditingController();
    final TextEditingController _numeroDaConta = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _nomeCompleto,
                decoration: InputDecoration(
                  labelText: 'Nome Completo',

                ),
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _numeroDaConta,
                decoration: InputDecoration(
                  labelText: 'Numero da Conta',

                ),
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  // style: style,
                  onPressed: () {
                    final String name = _nomeCompleto.text;
                    final int numeroConta = int.parse(_numeroDaConta.text);
                    final Contato novoContato = Contato(0,name,numeroConta);
                    Navigator.pop(context, novoContato);
                  },
                  child: const Text('Criar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
