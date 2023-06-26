import 'package:flutter/material.dart';
import 'package:todo_app/Styles/colors.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(color: white),
      ),
      backgroundColor: primaryColor,
    ),
  );
}
