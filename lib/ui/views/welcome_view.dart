import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icomax/helpers/theme.dart';
import 'package:icomax/ui/views/sign_in/sign_in_view.dart';
import 'package:icomax/ui/views/sign_up/sign_up_view.dart';

import '../../router.dart';

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
        left: true,right: true,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: 120,
                  child: Image.asset('assets/images/icon.png'),
                ),
                TitleText(
                  'Welcome to KStar',
                  fontSize: 35
                ),
                SizedBox(
                  height: 10,
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
                  child: ButtonBar(
                    mainAxisSize: MainAxisSize.min,
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
                Get.to(SignUpView());
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
              Get.to(SignInView());
          },
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10) ,
          child: TitleText('Sign In', color: AppColor.white)
      ),
    );
  }
  Widget build(BuildContext context) {
      SystemChrome.setEnabledSystemUIOverlays ([]);
      return Scaffold(
        key: _scaffoldKey,
        body: _body(context),
      );
  }
}