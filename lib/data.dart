import 'package:flutter/material.dart';
import 'package:tms/buttontemplate.dart';

///Method returns dark grey if app is in dark mode and light grey otherwise
Color? getAppColor(bool darkMode) {
  return darkMode ? Colors.grey[900] : Colors.grey[200];
}
