import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componentes.dart';
import 'RegisterNumberPhone.dart';

class SimulationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Activity(
      child: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Container(
                alignment: Alignment.topLeft,
                child: Text("Escolha \ncomo \nprefere \nser \natendido",
                    style: TextStyle(
                        color: Colors.black,
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
                      MaterialDescription(
                          click: () {},
                          backgroundColor: Colors.orangeAccent,
                          text: "Simulação",
                          description:
                              "Vamos fazer algumas perguntas, \ne poderá conferir todas as opções.",
                          mIcon: Icons.menu),
                      SizedBox(height: 15),
                      MaterialDescription(
                          click: () {
                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>RegisterPhoneNumber()));
                          },
                          backgroundColor: Colors.pink,
                          text: "Ligação",
                          description:
                              "Nós te ligamos, e em alguns\n minutos poderá escolher a melhor\n opção.",
                          mIcon: Icons.local_phone),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
