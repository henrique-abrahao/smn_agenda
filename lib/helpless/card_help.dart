import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 34.0, top: 25, bottom: 18, right: 18),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://static.wixstatic.com/media/d5c542_33929b96c33f40589e2e77e1267e518b~mv2.jpg/v1/fill/w_630,h_365,al_c,q_80,usm_0.66_1.00_0.01/d5c542_33929b96c33f40589e2e77e1267e518b~mv2.webp'),
                  maxRadius: 45.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Dr. Bruno Henrique', style: TextStyle(fontSize: 18),),
                  Text('Especialidade: Canal')

                ],
              )
            ],
          ),
        ),
        Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 34.0, top: 25, bottom: 18, right: 18),
                child: CircleAvatar(
                  maxRadius: 45.0,
                  backgroundImage: NetworkImage('https://odonto-sa.com/wp-content/uploads/2018/09/atrair-pacientes-para-o-consultorio-odontologico-1024x683.jpg'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Dr. De Arrascaeta', style: TextStyle(fontSize: 18),),
                  Text('Especialidade: Obturação')

                ],
              )
            ],
          ),
        ),
        Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 34.0, top: 25, bottom: 18, right: 18),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://static.wixstatic.com/media/d5c542_0c010f7611f84e11b992a52955537a5f~mv2_d_2800_1867_s_2.jpg'),
                  maxRadius: 45.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Dr. Gabriel Barbosa', style: TextStyle(fontSize: 18),),
                  Text('Especialidade: Cirugia em geral')

                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
