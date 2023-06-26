import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void nextPage(BuildContext context, Widget page){
  Navigator.push(context, CupertinoPageRoute(builder: (context) => page));
}

void nextPageReplace(BuildContext context, Widget page){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
}