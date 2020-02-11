import 'package:aog/widgets/logo.widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          TextFormField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
