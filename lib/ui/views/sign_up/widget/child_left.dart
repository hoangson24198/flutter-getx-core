import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icomax/helpers/theme.dart';

class SignUpChildLeft extends StatefulWidget {
  const SignUpChildLeft({Key key}) : super(key: key);

  @override
  _SignUpChildLeft createState() => _SignUpChildLeft();
}
class _SignUpChildLeft extends State<SignUpChildLeft>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget _backButton() {
    return IconButton(
        icon: Image.asset("assets/images/icon_back.png"),
        onPressed: () {
          Get.back();
        });
  }

  Widget _body(BuildContext context){
    return Container(
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _contentLeft(),
          Positioned(top: 20, left: 20, child: _backButton()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        key: _scaffoldKey,
        body: _body(context),
      );
  }
}
class _contentLeft extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100,vertical: 40),
      alignment: Alignment.centerLeft,
      child: new Column(mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Why KSTAR?",
              style: bigHeaderTextStyle),
          new Text("Kstar description",
              style: descTextStyle),
          new Text("Kstar footer",
              style: descTextStyle),
          //new Container()
        ],
      ),
    );
  }
}
class _backgroundImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://alltheworldstokamaks.files.wordpress.com/2012/07/kstar-front-2008-07.jpg"),
              fit: BoxFit.cover
          )
      ),
    );
  }
}