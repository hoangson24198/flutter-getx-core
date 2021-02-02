
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  TestWidget({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _TestWidget createState() => _TestWidget();
}

class _TestWidget extends State<TestWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.sort, color: Theme.of(context).hintColor),
          onPressed: () => widget.parentScaffoldKey.currentState.openDrawer(),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true
      )
    );
  }
}
