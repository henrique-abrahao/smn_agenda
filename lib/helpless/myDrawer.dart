import 'package:agenda_smn/Calendar/calendar_page.dart';
import 'package:agenda_smn/Home/home_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        elevation: 0,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 190,
                color: Color(0xff1565c0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, size: 58,),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Ricardo Juarez', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        Text('teste@teste.com', style: TextStyle(color: Colors.white),)

                      ],
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage() ));},
                child: Padding(
                  padding: EdgeInsets.only(top: 28),
                  child:  Row(
                      children: <Widget>[
                        Padding(
                          child: Icon(Icons.home, size: 30, color: Color(0xff8c8c8c),),
                          padding: EdgeInsets.only(left: 33, right: 25),
                        ),
                        Text('Inicio')
                      ],
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28),
                child: Row(
                    children: <Widget>[
                      Padding(
                        child: Icon(Icons.chat, size: 28, color: Color(0xff8c8c8c),),
                        padding: EdgeInsets.only(left: 33, right: 25),
                      ),
                      Text('Converse Conosco')
                    ],
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28),
                child: Row(
                    children: <Widget>[
                      Padding(
                        child: Icon(Icons.map, size: 28, color: Color(0xff8c8c8c),),
                        padding: EdgeInsets.only(left: 33, right: 25),
                      ),
                      Text('Consultórios mais próximos')
                    ],
                  ),
              ),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage() ));},
                child: Padding(
                  padding: EdgeInsets.only(top: 28),
                  child:  Row(
                      children: <Widget>[
                        Padding(
                          child: Icon(Icons.date_range, size: 28, color: Color(0xff8c8c8c),),
                          padding: EdgeInsets.only(left: 33, right: 25),
                        ),
                        Text('Hermes')
                      ],
                    ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom : 16.0),
                    child: GestureDetector(
                      onTap: (){},
                            child: Row(
                                children: <Widget>[
                                  Padding(
                                    child: Icon(Icons.exit_to_app, size: 28, color: Color(0xff8c8c8c),),
                                    padding: EdgeInsets.only(left: 33, right: 25),
                                  ),
                                  Text('Sair')
                                ],
                          ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
