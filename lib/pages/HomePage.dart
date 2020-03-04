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
      body: Stack(
        children: <Widget>[
          Image.asset("images/image_background.jpg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fitHeight),
          Container(
              color: Colors.red.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity),
          Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                SizedBox(height: 80),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Nos \ncorremos \natrás \nda sua \nsaúde!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.bold))),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          ButtonRound(
                            text: "SIMULAÇÃO RÁPIDA",
                            textColor: Colors.orangeAccent,
                            click: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SimulationPage()));
                              },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonRound(
                            text: "ENTRAR COM FACEBOOK",
                            backgroundColor: Colors.blue,
                            textColor: Colors.white,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FlatButton(
                            textColor: Colors.white,
                            child: Text("ENTRAR"),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
