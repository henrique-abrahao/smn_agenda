import 'package:agenda_smn/helpless/card_help.dart';
import 'package:agenda_smn/helpless/myCarrossel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Scaffold(
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
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: MyCarrosselWidget()
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 68.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Nossa Equipe!', style: TextStyle(fontSize: 22, color: Colors.black87),)),
                ),
                Expanded(
                  child: MyCard(),
                )
              ],
            )
          ],
        ));
  }
}
