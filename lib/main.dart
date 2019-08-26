import 'package:flutter/material.dart';
// import 'Home/home_page.dart';
import './Components/form_box.dart';
import './http/http_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yaoyun',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        // splashColor: Colors.white70,
      ),
      // initialRoute: '/FormBox',
      // routes: {
      //   // '/': (context) => HomePage(),
      //   '/FormBox': (context) => FormBoxDemo(),
      // },
      home: HttpDemo(),
    );
  }
}
