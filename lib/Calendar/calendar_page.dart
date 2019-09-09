import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'consulta_page.dart';

class CalendarPage extends StatefulWidget {

  @override
  _CalendarPageState createState() => _CalendarPageState();
}


class _CalendarPageState extends State<CalendarPage> {

  final _calendarController = CalendarController();
  DateTime dateTime;

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hermes'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text('Selecione o dia que deseja realizar a consulta!'),
          TableCalendar(calendarController: _calendarController, onDaySelected: (dateTime, context){
            _dateSelected(dateTime);
          },),
        ],
      ),
    );
  }

  _dateSelected(date){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ConsultaPage(dateTime: date)));
  }
}
