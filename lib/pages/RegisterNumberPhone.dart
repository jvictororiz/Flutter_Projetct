import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componentes.dart';
import 'SuccessPhone.dart';

class RegisterPhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Activity(
      child: Container(
        margin: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Text("Insira \nseu \nnúmero de \ntelefone.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold)),
              Text("Em alguns\nminutos iremos\nte ligar!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 34,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 60),
              InputTextMask(hint:"Digite seu número",mask: "(00) 0000-0000",click: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>SuccessPhone()));
              },)
            ],
          ),
        ),
      ),
    );
  }
}
