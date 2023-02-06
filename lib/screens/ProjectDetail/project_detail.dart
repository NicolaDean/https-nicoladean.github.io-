import 'package:flutter/material.dart';

//UTILS
import '../../utils/responsive-manager.dart';
//WIDGETS
import '../../widgets/responsive_layout.dart';
import 'project_detail _desktop.dart';
import 'project_detail _mobile.dart';
import 'project_detail _tablet.dart';

class ProjectDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveManager.setConfiguration(context);
    return ResponsiveLayout(
        mobileScreen: ProjectDetail_Mobile(),
        desktopScreen: ProjectDetail_Desktop(),
        tabletScreen: ProjectDetail_Tablet());
  }
}
