import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skill_widget.dart';

//WIDGETS
import 'home_desktop.dart';
import '../NavigationBar/navigation_bar.dart';

//CONSTANTS
import '../../constants/strings.dart';

class Home_tablet extends Home_Desktop {
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

  @override
  Widget _getBody() {
    return Container(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                child: Column(children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ImagePortrait(),
                SizedBox(
                  width: 50,
                ),
                Flexible(flex: 1, child: getAboutMe())
              ]),
              SizedBox(
                height: 50,
              ),
              getSkillAndExperiences(),
            ]))));
  }
}
