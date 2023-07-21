import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class Toast {
  static show(BuildContext? context, String message, String title,
      ContentType contentType) {
    final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
            title: title, message: message, contentType: contentType));
    ScaffoldMessenger.of(context!)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
