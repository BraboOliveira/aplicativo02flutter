import 'package:aplicativo02flutter/screens/contatos.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://us.123rf.com/450wm/raduborzea/raduborzea1705/raduborzea170500003/77509948-generic-logo.jpg?ver=6'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Contatos()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  height: 100,
                  width: 150,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 32.0,
                      ),
                      Text('Contatos',
                          style: TextStyle(color: Colors.white, fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
