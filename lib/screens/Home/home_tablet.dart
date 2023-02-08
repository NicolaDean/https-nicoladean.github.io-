import 'package:flutter/material.dart';

//WIDGETS
import 'building_blocks.dart' as home;
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

  AppBar _getAppBar(context) {
    return AppBar(
      title: home.buildTitle(),
      titleSpacing: 20.0,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: home.getHomeActions(context),
    );
  }

  @override
  Widget _getBody() {
    return Container(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                child: Column(children: [
              home.getAboutMe(),
              SizedBox(
                height: 50,
              ),
              getSkillAndExperiences()
            ]))));
  }
}
