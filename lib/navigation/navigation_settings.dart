import 'package:flutter/material.dart';

//SCREENS WIDGETS:
import '../screens/Home/home.dart';
import '../screens/ProjectDetail/project_detail.dart';

Map<String, Widget Function(BuildContext)> routes_settings = {
  '/': (context) => Home(),
  '/details': (context) => ProjectDetail(),
};

String routes_initial_setting = '/';
