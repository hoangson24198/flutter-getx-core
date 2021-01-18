import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplitWidget extends StatefulWidget{
  SplitWidget({Key key,
  @required this.childFirst,
  @required this.childSecond}) : super(key: key);
  final Widget childFirst;
  final Widget childSecond;

  @override
  _SplitWidget createState() => _SplitWidget();
}
class _SplitWidget extends State<SplitWidget> {
  @override
  Widget build(BuildContext context) => OrientationBuilder(builder: (context,orientation){
      return (orientation == Orientation.portrait) ? null : SplitHorizontalWidget(
        childLeft: widget.childFirst,
        childRight: widget.childSecond
      );
  });
}

class SplitHorizontalWidget extends StatefulWidget {
  SplitHorizontalWidget({Key key,
  this.childLeft,
  this.childRight}) : super(key: key);
  final Widget childLeft;
  final Widget childRight;

  @override
  _SplitHorizontalWidget createState() => _SplitHorizontalWidget();
}
class _SplitHorizontalWidget extends State<SplitHorizontalWidget>{
  double _leftDraggableIcon = 0.0;

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    final double heightScreen = MediaQuery.of(context).size.height;

    if (_leftDraggableIcon == 0.0) {
      _leftDraggableIcon = widthScreen / 2;
    }

    return Stack(children: <Widget>[
      Positioned(
        child: widget.childLeft,
        top: 0,
        left: 0,
        width: _leftDraggableIcon,
        height: heightScreen,
      ),
      Positioned(
        child: widget.childRight,
        top: 0,
        left: _leftDraggableIcon,
        width: widthScreen - _leftDraggableIcon,
        height: heightScreen,
      )
    ]);
  }
}