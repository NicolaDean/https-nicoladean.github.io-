import 'package:flutter/material.dart';
import 'package:portfolio/constants/theme.dart';
import 'package:portfolio/models/Project_model.dart';

//UTILS
import '../../utils/responsive-manager.dart';
//WIDGETS
import '../../widgets/responsive_layout.dart';
import 'project_detail _desktop.dart';
import 'project_detail _mobile.dart';
import 'project_detail _tablet.dart';
import '../../widgets/project_widget.dart';
import '../../constants/projects.dart';
import 'package:go_router/go_router.dart';

class ProjectDetail extends StatelessWidget {
  int id;

  Project_model detail = const Project_model(
      1, "name", "tags", "img_path", "short_explanation", "detail_explanation");

  ProjectDetail({super.key, this.id = 0}) {
    try {
      this.detail = projects[id];
    } catch (e) {
      print("MISSING PROJECT 404");
      this.detail = missing_project;
    }
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveManager.setConfiguration(context);
    return ResponsiveLayout(
        mobileScreen: ProjectDetail_Mobile(id: this.id),
        desktopScreen: ProjectDetail_Desktop(id: this.id),
        tabletScreen: ProjectDetail_Tablet(id: this.id));
  }

  Widget getBody() {
    return Card(
      child: Column(children: [getHeader()]),
    );
  }

  Widget getHeader() {
    return ListTile(
      leading: Icon(Icons.smart_toy_outlined),
      title: Text(detail.name),
      subtitle: Text(
        detail.tags,
        style: TextStyle(color: myColors.secondary),
      ),
    );
  }
}
