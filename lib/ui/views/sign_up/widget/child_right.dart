import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icomax/helpers/theme.dart';
import 'package:icomax/ui/widgets/customWidgets.dart';
import 'package:icomax/ui/widgets/custom_text.dart';

class SignUpChildRightFirst extends StatefulWidget {
  const SignUpChildRightFirst({Key key}) : super(key: key);
  @override
  _SignUpChildRightFirst createState() => _SignUpChildRightFirst();
}
class _SignUpChildRightFirst extends State<SignUpChildRightFirst>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _allAccept = false;
  bool _ageAccept = false;

  Widget _header(){
    return  Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 20,vertical: 10),
          width: fullWidth(context),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Customtext(
                    text:"All Accept"
                  )),
              Expanded(
                flex: 0,
                child: Checkbox(
                    value: _allAccept,
                    onChanged: (bool value) {
                      setState(() {
                        _allAccept = !_allAccept;
                      });
                    }),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 20),
          width: fullWidth(context),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Customtext(
                    text:"Confirmation over 14 years old(required)",
                  )),
              Expanded(
                flex: 0,
                child: Checkbox(
                    value: _ageAccept,
                    onChanged: (bool value) {
                      setState(() {
                        _ageAccept = !_ageAccept;
                      });
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _body(BuildContext context){
    return Container(
      child: Stack(
        children: <Widget>[
          _header()
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