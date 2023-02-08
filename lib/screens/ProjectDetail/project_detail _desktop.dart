import 'package:flutter/material.dart';

//UTILS
import '../../utils/responsive-manager.dart';
//WIDGETS
import '../../widgets/responsive_layout.dart';
import '../../widgets/project_widget.dart';
import '../NavigationBar/navigation_bar.dart';

import 'package:go_router/go_router.dart';
import 'package:portfolio/models/Project_model.dart';

class ProjectDetail_Desktop extends StatelessWidget {
  Project_model detail;

  ProjectDetail_Desktop({super.key, required this.detail}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: MyNavigationBar.getAppBar(context),
      body: Container(
        color: Colors.deepPurple[600],
        child: Project(model: detail),
      ),
    );
  }
}
