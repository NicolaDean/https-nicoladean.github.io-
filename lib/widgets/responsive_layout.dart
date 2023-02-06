import 'package:flutter/material.dart';

//MODELS ELEMENTS
import '../models/Experience.dart';
//UTILS
import '../utils/responsive-manager.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScreen,
      required this.desktopScreen,
      required this.tabletScreen});

  @override
  Widget build(BuildContext context) {
    return ResponsiveManager.switchResponsivly(
        mobileScreen, tabletScreen, desktopScreen);
  }
}
