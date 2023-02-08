import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//WIDGETS
import 'building_blocks.dart' as home;
import '../../widgets/skill_widget.dart';
import '../../widgets/project_widget.dart';
import '../NavigationBar/navigation_bar.dart';

import '../ProjectDetail/project_detail.dart';
import 'package:go_router/go_router.dart';

//CONSTANTS
import '../../constants/strings.dart';

//READ BLOCKS FROM TOP TO BOTTOM
class Home_Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyNavigationBar.getAppBar(context),
        body: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_getBody()])));
  }

  Widget _getBody() {
    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Row(children: [
              _getBodyColumnLeft(),
              Spacer(flex: 1),
              _getBodyColumnRight()
            ]),
          )),
    );
  }

  Widget _getBodyColumnLeft() {
    return Flexible(
      fit: FlexFit.tight,
      flex: 4,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        home.getAboutMe(),
        SizedBox(
          height: 50,
        ),
        getSkillAndExperiences(),
      ]),
    );
  }

  Widget _getBodyColumnRight() {
    return Flexible(
      fit: FlexFit.tight,
      flex: 3,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [home.ImagePortrait(), _getSkills()]),
    );
  }

  Widget getSkillAndExperiences() {
    return Row(children: [
      Flexible(
          fit: FlexFit.tight, flex: 2, child: Container(child: getProjects()))
    ]);
  }

  Widget _getSkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getSkillTitle(),
        SizedBox(height: 20),
        SkillAdvancedContainer()
      ],
    );
  }

  Widget getProjects() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [getProjectTitle(), SizedBox(height: 20), ProjectContainer()],
    );
  }

  Widget _getSkillTitle() {
    return RichText(
      text: const TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.black,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        children: <TextSpan>[
          TextSpan(
            text: "S ",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
          TextSpan(
            text: "k i l l ",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget getProjectTitle() {
    return RichText(
      text: const TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.black,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        children: <TextSpan>[
          TextSpan(
            text: "P r o ",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
          TextSpan(
            text: "j e c t s ",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
