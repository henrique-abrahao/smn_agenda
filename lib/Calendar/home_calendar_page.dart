import 'package:flutter/material.dart';

import 'calendar_page.dart';

class HomeCalendarPage extends StatefulWidget {
  @override
  _HomeCalendarPageState createState() => _HomeCalendarPageState();
}

class _HomeCalendarPageState extends State<HomeCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hermes'),
        centerTitle: true,
      ),
      floatingActionButton: Container(
        height: 75.0,
        width: 75.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              _goCalendar();
            },
            child: Icon(Icons.date_range),
            backgroundColor: Color(0xff5e4ca0),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.search,
                size: 68,
                color: Colors.grey,
              ),
              Text(
                'Marque seu Horário',
                style: TextStyle(fontSize: 48, color: Colors.grey),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  _goCalendar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CalendarPage()));
  }
}
