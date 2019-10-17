import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../componentes.dart';
import 'RegisterNumberPhone.dart';

class SuccessPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              SizedBox(height: 55),
//              Image.asset("images/image_background.jpg"),
              SvgPicture.asset(
                "images/image_agenda.svg",
                semanticsLabel: "agenda",
              ),
              SizedBox(height: 55),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Pronto! agora é só aguardar",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              SizedBox(height: 35),
              Text(
                "Vamos entrar em contato, e você poderá tirar suas dúvidas, e vamos oferecer as melhores opções de acordo com seu perfil.",
                style: TextStyle(color: Colors.grey, fontSize: 21),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ButtonRound(
                    text: "Fechar",
                    textColor: Colors.white,
                    click: () {},
                    gradientColor: LinearGradient(
                        colors: [Color(0xffF1B175), Color(0xffFFD49A)]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
