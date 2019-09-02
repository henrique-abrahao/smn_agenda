import 'package:agenda_smn/Home/home_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class UserRepository{

  final String email;
  final String senha;

  UserRepository({@required this.email, @required this.senha});


  void getUser()async {
    print('teste');

     try{ Response response = await Dio().post("http://smn-agenda-api.herokuapp.com/login",
          data:{"email": '${this.email}', "senha":"${this.senha}"});
      final nome = response.data['content']['Nome'];
      final telefone = response.data['content']['Telefone'];
      final email = response.data['content']['Email'];
      print(nome);
      print(telefone);
      print(email);

  }catch(e){
       print(e);
     }
  }
}
