import 'package:flutter/material.dart';
import 'package:portfolio/models/Project_model.dart';

//UTILS
import '../../utils/responsive-manager.dart';
//WIDGETS
import '../../widgets/responsive_layout.dart';
import 'project_detail _desktop.dart';
import 'project_detail _mobile.dart';
import 'project_detail _tablet.dart';
import '../../widgets/project_widget.dart';

import 'package:go_router/go_router.dart';

class ProjectDetail extends StatelessWidget {
  Project_model detail;

  ProjectDetail({super.key, required this.detail}) {}

  @override
  Widget build(BuildContext context) {
    if (detail != null) {
      print(detail.name);
    }

    ResponsiveManager.setConfiguration(context);
    return ResponsiveLayout(
        mobileScreen: ProjectDetail_Mobile(),
        desktopScreen: ProjectDetail_Desktop(detail: detail),
        tabletScreen: ProjectDetail_Tablet());
  }
}
