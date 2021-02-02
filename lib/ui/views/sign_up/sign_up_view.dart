import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:icomax/ui/views/sign_up/element//child_left.dart';
import 'package:icomax/ui/views/sign_up/element/child_right.dart';
import 'package:icomax/ui/views/sign_up/element/split_horizon_widget.dart';

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
            childFirst: SignUpChildLeftFirst(),
            childSecond: SignUpChildRightFirst()
        ));
  }
}
