import 'package:flutter/material.dart';

class ConsultaPage extends StatefulWidget {

  final DateTime dateTime;

  ConsultaPage({@required this.dateTime});

  @override
  _ConsultaPageState createState() => _ConsultaPageState();
}

class _ConsultaPageState extends State<ConsultaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  labelText: 'Serviço',
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
