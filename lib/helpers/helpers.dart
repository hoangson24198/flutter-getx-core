import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:icomax/helpers/theme.dart';

class Helper {
  BuildContext context;

  Helper.of(BuildContext _context) {
    this.context = _context;
  }

  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColor.dodgetBlue,
        textColor: AppColor.white);
  }
}
