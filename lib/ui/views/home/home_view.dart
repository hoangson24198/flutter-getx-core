import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icomax/helpers/helpers.dart';
import 'package:icomax/ui/views/home/element/drawer_widget.dart';
import 'package:icomax/ui/views/home/element/test_widget.dart';

class HomeView extends StatefulWidget{
  DateTime currentBackPressTime;
  Widget currentPage = TestWidget();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  _HomeView createState() => _HomeView();
}
class _HomeView extends State<HomeView> {
  
  @override
  void initState() {
    super.initState();
    _selectTab(0);
  }

  void _selectTab(int tabItem) {
    setState(() {
      switch (tabItem) {
        case 0:
          widget.currentPage = TestWidget(parentScaffoldKey: widget.scaffoldKey);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: onWillPop ,
        child: Scaffold(
          key: widget.scaffoldKey,
          drawer: DrawerWidget(),
          body: widget.currentPage,
        ));
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (widget.currentBackPressTime == null || now.difference(widget.currentBackPressTime) > Duration(seconds: 2)) {
      widget.currentBackPressTime = now;
      Helper.showToast("Back again to exit");
      return Future.value(false);
    }
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    return Future.value(true);
  }
}