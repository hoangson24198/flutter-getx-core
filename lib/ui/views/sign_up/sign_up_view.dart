import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icomax/helpers/theme.dart';
import 'package:icomax/ui/views/sign_up/widget/split_horizon_widget.dart';
import 'package:icomax/ui/views/welcome_view.dart';

class SignUpView extends StatefulWidget {
  //final VoidCallback loginCallback;
  const SignUpView({Key key}) : super(key: key);
  @override
  _SignUpView createState() => _SignUpView();
}
class _SignUpView extends State<SignUpView>{

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return SafeArea(
        child:  SplitWidget(
            childFirst: _childLeft(),
            childSecond: _childRight()
        ));
  }

 Widget _childLeft() {
    return Container(
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _backButton(),
          _contentLeft()
        ],
      ),
    );
 }

 Widget _childRight(){

 }

  Widget _backButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 40),
      child: FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                    WelcomeView()));
          },
          child: Image.asset("assets/images/icon_back.png")
      ),
    );
  }

 Widget _backgroundImage(){
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://alltheworldstokamaks.files.wordpress.com/2012/07/kstar-front-2008-07.jpg"),
            fit: BoxFit.cover
          )
        ),
      );
 }

 Widget _contentLeft(){
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
