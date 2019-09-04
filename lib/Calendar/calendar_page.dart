import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Bem Vindo de Volta!'),
          centerTitle: true,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Color(0xff5e4ca0),),
          // sets the active color of the `BottomNavigationBar` if `B),
          child: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.date_range), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('')),
          ],
            backgroundColor: Color(0xff5e4ca0),),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 230,
              decoration: BoxDecoration(
                  color: Color(0xff5e4ca0),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
            ),
          ],
        ));
  }
}
