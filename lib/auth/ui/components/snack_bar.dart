import 'package:flutter/material.dart';

abstract class AppSnackBar {
  static void showSnackBarWithError(BuildContext context, String error) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(
        backgroundColor: Colors.redAccent.shade100,
        duration: const Duration(seconds: 10),
        content: SingleChildScrollView(
          child: Text(
            "Ошибка: $error",
            maxLines: 5,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  static void showSnackBarWithMessage(BuildContext context, String message) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(
        backgroundColor: Colors.green.shade100,
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(
            message,
            maxLines: 5,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  static void clearSnackBars(BuildContext context) {
    ScaffoldMessenger.maybeOf(context)?.clearSnackBars();
  }
}
