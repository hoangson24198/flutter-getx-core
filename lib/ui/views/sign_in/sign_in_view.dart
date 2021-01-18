import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icomax/ui/widgets/customLoader.dart';

class SignInView extends StatefulWidget {
  //final VoidCallback loginCallback;
  const SignInView({Key key}) : super(key: key);
  @override
  _SignInView createState() => _SignInView();
}
class _SignInView extends State<SignInView>{
  TextEditingController _idController;
  TextEditingController _passwordController;
  CustomLoader loader;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    _idController = TextEditingController();
    _passwordController = TextEditingController();
    loader = CustomLoader();
    super.initState();
  }
  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _body(BuildContext context){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: _body(context)
    );
  }

}