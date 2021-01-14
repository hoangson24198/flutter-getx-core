import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/viewmodels/login_model.dart';
import '../router.dart' as SkyArt;
import '../shared/app_colors.dart';
import '../widgets/login_header.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginModel>(
      init: LoginModel(),
      builder: (model) => Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Obx(() =>
                  Text(model.button.toString())), //get count variable value
            ),
            LoginHeader(
                validationMessage: model.errorMessage, controller: _controller),
            model.isBusy
                ? CircularProgressIndicator()
                : FlatButton(
                    color: Colors.white,
                    child: Obx(() => Text(model.button.toString())),
                    //login button
                    onPressed: () async {
                      model.login(_controller.text);

                      Fimber.d("ABCD click ne");

                      model.command.value.when(
                        loading: (message) {
                          model.button.value = message;
                          this._controller.text = "loading nè";
                          Fimber.d("ABCD vo loading");
                        },
                        error: (message) {
                          model.button.value = message;
                          this._controller.text = message;
                          Fimber.d("ABCD vo error");
                        },
                      );
                      // Get.toNamed(SkyArt.Router.homeViewRoute);
                      // var loginSuccess = await model.login(_controller.text);
                      //if (loginSuccess) {
                      //  Get.toNamed(SkyArt.Router.homeViewRoute);
                      //}
                    },
                  )
          ],
        ),
      ),
    );
  }
}
