import 'package:flutter/material.dart';

class HorarioButtom extends StatefulWidget {
  String horario;
  bool marcado = false;

  HorarioButtom({@required this.horario, this.marcado});

  @override
  _HorarioButtomState createState() => _HorarioButtomState();
}

class _HorarioButtomState extends State<HorarioButtom> {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(

          child: RaisedButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48.0)),
              color: Theme.of(context).primaryColor,
              onPressed: widget.marcado ? null : () => _goView(),
              child: Text('${widget.horario}',
                  style: TextStyle(color: Colors.white70))));
  }

  _goView() {
    print(buttons[2]);
  }
}

List<HorarioButtom> buttons = [
  HorarioButtom(horario: '8:00', marcado: false),
  HorarioButtom(horario: '10:00', marcado: false),
  HorarioButtom(horario: '12:00', marcado: false),
  HorarioButtom(horario: '14:00', marcado: false),
  HorarioButtom(horario: '16:00', marcado: false),
  HorarioButtom(horario: '18:00', marcado: true),

];
