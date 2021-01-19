import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpChildRight extends StatefulWidget {
  const SignUpChildRight({Key key}) : super(key: key);
  @override
  _SignUpChildRight createState() => _SignUpChildRight();
}
class _SignUpChildRight extends State<SignUpChildRight>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _allAccept = false;

  Widget _radioAcceptAll(){
      return Column(
        children: <Widget>[
            Text('Accept all'),
            Checkbox(
                value: _allAccept,
                onChanged: (value) {
                  setState(() {
                    _allAccept = !_allAccept;
                  });
                })
        ],
      );
  }

  Widget _body(BuildContext context){
    return Container(
      child: Stack(
        children: <Widget>[
          _radioAcceptAll()
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