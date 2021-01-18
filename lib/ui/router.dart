import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icomax/ui/views/sign_in/sign_in_view.dart';
import 'package:icomax/ui/views/sign_up/sign_up_view.dart';
import 'file:///D:/icomax/lib/ui/views/welcome_view.dart';

import '../core/bindings/login_bindings.dart';

class Router {
  static const String welcomeRoute = '/';
  static const String homeViewRoute = '/home';
  static const String signInViewRoute = '/signin';
  static const String signUpViewRoute = '/signup';
  static const String postViewRoute = '/post';
  static const String testViewRoute = '/test';

  static List<GetPage> namedRoutes = <GetPage>[
    GetPage(name: welcomeRoute, page: () => WelcomeView()),
    GetPage(
      name: signInViewRoute,
      page: () => SignInView(),
      binding: LoginBindings(),
    ),
    GetPage(name: signUpViewRoute, page: () => SignUpView()),
  ];

  /*static Route<dynamic> onUnknownRoute(RouteSettings settings){
    return GetRouteBase(page: null)
  }
*/
  static GetPage errorRoute = GetPage(
    name: 'error',
    page: () => Scaffold(
      body: Center(
        child: Text('No route defined for selected route'),
      ),
    ),
  );
}
