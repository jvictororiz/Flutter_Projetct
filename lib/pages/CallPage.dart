import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componentes.dart';
import 'SimulationPage.dart';

void main() => runApp(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          DefaultAppBar(),

        ],
      )
    );
  }
}
