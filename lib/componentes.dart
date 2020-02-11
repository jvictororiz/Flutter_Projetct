import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ButtonRound extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final GestureTapCallback click;
  final LinearGradient gradientColor;

  const ButtonRound(
      {Key key, this.text, this.backgroundColor, this.textColor, this.click, this.gradientColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 45;
    return Container(
      height: 50,
      child: Material(
        borderRadius: BorderRadius.circular(radius),
        elevation: 3,
        color: backgroundColor,
        child: Container(
          decoration: BoxDecoration(gradient: gradientColor, borderRadius:BorderRadius.circular(radius)  ),
          child: InkWell(
            onTap: click,
            borderRadius: BorderRadius.circular(radius),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 17),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultAppBar extends StatelessWidget {
  final GestureTapCallback click;

  const DefaultAppBar({Key key, this.click}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: InkWell(
        highlightColor: Colors.grey,
        onTap: click,
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

class MaterialDescription extends StatelessWidget {
  final String text;
  final String description;
  final IconData mIcon;
  final GestureTapCallback click;
  final Color backgroundColor;

  const MaterialDescription(
      {Key key,
      this.text,
      this.description,
      this.mIcon,
      this.click,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 4,
        shadowColor: Colors.black54,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: click,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
            child: Row(
              children: <Widget>[
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      this.mIcon,
                      size: 32,
                      color: Colors.white,
                    )),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        text,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text(
                        description,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Activity extends StatelessWidget {
  final Widget child;

  const Activity({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        ),
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            body: child));
  }
}

class InputTextMask extends StatefulWidget {
  final GestureTapCallback click;
  final String mask;
  final String hint;

  const InputTextMask({Key key, this.mask, this.hint, this.click})
      : super(key: key);

  @override
  _InputTextMaskState createState() => _InputTextMaskState(mask, hint, click);
}

class _InputTextMaskState extends State<InputTextMask> {
  MaskedTextController controller;
  var mask;
  var hint;
  var click;

  _InputTextMaskState(this.mask, this.hint, this.click);

  @override
  void initState() {
    super.initState();
    controller = new MaskedTextController(mask: mask);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: TextField(
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff5BE6BF)),
            decoration: InputDecoration(hintText: hint),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: click,
            borderRadius: BorderRadius.circular(45),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff5BE6BF),
                  borderRadius: BorderRadius.circular(45)),
              height: 70,

              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
