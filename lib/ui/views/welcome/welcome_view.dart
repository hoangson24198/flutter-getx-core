import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icomax/helpers/theme.dart';

import 'Widgets/title_text.dart';

class WelcomeView extends StatefulWidget {
  WelcomeView({Key key}) : super(key: key);
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget _body(BuildContext context){
    return SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: 120,
                  child: Image.asset('assets/images/icon-480.png'),
                ),
                TitleText(
                  'Welcome to KStar',
                  fontSize: 35
                ),
                Text(
                    'KSTAR Description',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.muli(
                    fontSize: 20
                  )
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                       _signUpButton(),
                      SizedBox(
                        width: 20,
                      ),
                      _signInButton()
                    ],
                  ),
                )
              ],
            ),
        )
    );
  }

  Widget _signUpButton() {
      return Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          width: MediaQuery.of(context).size.width / 5,
          child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
              color: AppColor.gray50,
              onPressed: () {
                  log("HSSignUp");
              },
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10) ,
              child: TitleText('Sign Up', color: AppColor.white)
          ),
      );
  }
  Widget _signInButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width / 5,
      child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          color: AppColor.dodgetBlue,
          onPressed: () {
            log("HSSignIn");
          },
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10) ,
          child: TitleText('Sign In', color: AppColor.white)
      ),
    );
  }
  Widget build(BuildContext context) {
      return Scaffold(
        key: _scaffoldKey,
        body: _body(context),
      );
  }
}