import 'package:agenda_smn/repository/autentication.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {

  final _emailControler = TextEditingController();
  final _senhaControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          //margin: EdgeInsets.only(top: 270, bottom: 180, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.date_range, size: 80,),
                  Text('Agenda SMN', style: TextStyle(fontSize: 38, color: Colors.black38),)
                ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'E-mail',
                      border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  ),
                  controller: _emailControler,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8 ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Senha',
                      border: OutlineInputBorder(borderSide: BorderSide(width: 1))
                  ),
                  controller: _senhaControler,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                child: FlatButton(
                  onPressed: (){},
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Esqueci minha senha', style: TextStyle(color: Colors.black54),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  height: 60,
                  child: RaisedButton(
                    onPressed: (){
                       UserRepository(email: _emailControler.text, senha: _senhaControler.text).getUser();
                    },
                    color: Color(0xff1A2649),
                    child: Text('ENTRAR', style: TextStyle(color: Colors.white, fontSize: 18),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: FlatButton(
                    onPressed: (){}
                    , child: Text('Ainda não possui cadastro? Clique aqui', style: TextStyle(color: Colors.black54),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
