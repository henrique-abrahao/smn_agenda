import 'package:agenda_smn/helpless/horarioButtom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      appBar: AppBar(
        title: Text('Agendar Horario'),
        centerTitle: true,
      ),
      body: Column(
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
          GridView.builder(
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15
              ),
              itemCount: buttons.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, int){
                return buttons[int];
              }),
          Padding(
            padding: const EdgeInsets.only(left: 230, top: 32.0),
            child: ButtonTheme(
              height: 48,
              buttonColor: Color(0xff1565c0),
              child: RaisedButton(
                onPressed: (){},
                child: Text('Salvar Horario', style: TextStyle(color: Colors.white70),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
