import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icomax/ui/views/sign_in/sign_in_view.dart';
import 'package:icomax/viewmodels/login_model.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginModel>(
        init:LoginModel(),
        builder: (model) => Drawer(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                },
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).hintColor.withOpacity(0.1),
//              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
                  ),
                  accountName: Text(
                    "Hoang Son",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  accountEmail: Text(
                    "test",
                    style: Theme.of(context).textTheme.caption,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    backgroundImage: NetworkImage("http://ativn.edu.vn/wp-content/uploads/2018/03/user.png"),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                    model.logout().then((value) => Get.to(SignInView()));
                },
                leading: Icon(
                  Icons.exit_to_app,
                  color: Theme.of(context).focusColor.withOpacity(1),
                ),
                title: Text(
                  "Log Out",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              )
            ],
          ),
        ));
  }
}
