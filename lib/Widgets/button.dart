import 'package:flutter/material.dart';
import 'package:todo_app/Styles/colors.dart';

Widget customButton({required VoidCallback? onTap, bool status = false, String text = 'save', BuildContext? context}){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      elevation: 5.0,
      color: status ? grey : primaryColor,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: status ? null : onTap,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          status ? 'Please Wait...' : text,
          style: TextStyle(color: white, fontSize: 18),
        ),
      ),
    ),
  );
}