import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/router.dart' as SkyArt;

void main() {
  Fimber.plantTree(DebugTree());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ICOMAX',
      theme: ThemeData(),
      getPages: SkyArt.Router.namedRoutes,
      unknownRoute: SkyArt.Router.errorRoute,
    );
  }
}
