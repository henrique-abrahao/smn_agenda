import 'package:agenda_smn/login/login_page.dart';
import 'package:flutter/material.dart';

import 'Home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primaryColor: Color(0xff5e4ca0)),
    );
  }
}
