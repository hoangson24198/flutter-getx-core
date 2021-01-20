import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icomax/bindings/main_binding.dart';

import 'router.dart' as SkyArt;

void main() {
  Fimber.plantTree(DebugTree());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KSTAR',
      theme: ThemeData(),
      getPages: SkyArt.Router.namedRoutes,
      unknownRoute: SkyArt.Router.errorRoute,
      initialBinding: MainBinding(),
    );
  }
}
