import 'package:flutter/material.dart';

AppBar appBare({
  Color backgroundColor = Colors.teal,
  Color foregroundColor = Colors.white,
  String title = "SumCripto"
}) => AppBar(
  backgroundColor: backgroundColor,
  foregroundColor: foregroundColor,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  centerTitle: true,
  leading: Container(child: Icon(Icons.menu)),
  title: Container(alignment: Alignment.center, child: Text(title)),
  actions: [
    IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
    IconButton(onPressed: onPressed, icon: Icon(Icons.notifications)),
  ],
);


void onPressed(){}