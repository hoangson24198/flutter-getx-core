import 'package:fimber/fimber_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icomax/helpers/theme.dart';
import 'package:icomax/ui/views/sign_up/sign_up_view.dart';
import 'package:icomax/ui/widgets/customLoader.dart';
import 'package:icomax/ui/widgets/customWidgets.dart';

class SignInView extends StatefulWidget {
  final VoidCallback loginCallback;

  const SignInView({Key key, this.loginCallback}) : super(key: key);

  @override
  _SignInView createState() => _SignInView();
}

class _SignInView extends State<SignInView> {
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

  Widget _body(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .15),
                  _title(),
                  SizedBox(height: 50),
                  _emailPasswordWidget(),
                  _emailLoginButton(context),
                  SizedBox(height: height * .055),
                  _createAccountLabel(),
                ],
              ),
            ),
          ),
          Positioned(top: 40, left: 10, child: _backButton()),
        ],
      ),
    );
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _emailLoginButton(BuildContext context) {
    return Container(
      width: fullWidth(context),
      margin: EdgeInsets.symmetric(vertical: 30),
      alignment: Alignment.center,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        color: AppColor.dodgetBlue,
        onPressed: () {
          Fimber.d("HSSignIn");
        },
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: TitleText('Login', color: Colors.white),
      ),
    );
  }

  Widget _entryFeild(String title, String hint, String message, String action,
      {TextEditingController controller, bool isPassword = false}) {
    return Container(
        width: fullWidth(context) / 2,
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: hint,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                      borderSide: BorderSide(color: AppColor.gray50)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                      borderSide: BorderSide(color: Colors.blue)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
            ),
            _actionLabel(message, action)
          ],
        ));
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Get.to(SignUpView());
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                  color: AppColor.dodgetBlue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionLabel(String message, String action) {
    return InkWell(
      onTap: () {
        Fimber.d("Find ID");
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(5),
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              action,
              style: TextStyle(
                  color: AppColor.dodgetBlue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryFeild('ID', 'Enter id','Do you have ID?','Find ID', controller: _idController),
        _entryFeild('Password', 'Enter password','Forgot password ?','Send reset',controller: _passwordController)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(key: _scaffoldKey, body: _body(context));
  }
}
class _title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Login',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: AppColor.dodgetBlue,
          )),
    );
  }

}
