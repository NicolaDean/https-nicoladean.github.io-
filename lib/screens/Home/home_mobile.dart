import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home/home_desktop.dart';
import 'package:portfolio/widgets/project_widget.dart';

//WIDGETS
import '../NavigationBar/navigation_bar.dart';
//CONSTANTS
import '../../constants/strings.dart';

class Home_Mobile extends Home_Desktop {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyNavigationBar.getAppBarMobile(),
        drawer: MyNavigationBar.getDrawer(context),
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImagePortrait(),
                  SizedBox(height: 50),
                  getAboutMe(),
                  SizedBox(height: 50),
                  getProjects(),
                  SizedBox(height: 50),
                  getSkills(),
                ]),
          )),
    );
  }
}
