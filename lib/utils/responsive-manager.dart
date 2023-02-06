import 'package:flutter/material.dart';
import '../constants/sizes.dart';

class ResponsiveManager {
  static ResponsiveManager screen_data = ResponsiveManager();

  static double app_height = 600; //Height
  static double app_AR = 0.9; //Aspect Ration
  static late BuildContext ctx;

  static double app_width() {
    return MediaQuery.of(ctx).size.width;
  }

  //Sizes boundaries configuration
  double small = Dimension_constraints.mobile_width;
  double medium = Dimension_constraints.medium_desktop_width;

  static void setConfiguration(context) {
    ctx = context;
    //app_width = MediaQuery.of(context).size.width;
    //app_height = MediaQuery.of(context).size.height;
    //app_width = MediaQuery.of(context).size.aspectRatio;
  }

  static ResponsiveManager getScreenData() {
    return screen_data;
  }

  static bool isSmall() {
    return MediaQuery.of(ctx).size.width < screen_data.small;
  }

  static bool isMedium() {
    return MediaQuery.of(ctx).size.width < screen_data.medium;
  }

  static bool isBig() {
    return MediaQuery.of(ctx).size.width >= screen_data.medium;
  }

  static dynamic switchResponsivly(dynamic s, dynamic m, dynamic b) {
    return (isSmall())
        ? s
        : ((isMedium()) ? m : b); //Chose if display small med or big
  }

  static dynamic displayOnSmall(dynamic s) {
    return (isSmall()) ? s : null;
  }

  static dynamic displayOnMedium(dynamic m) {
    return (isMedium() || isBig()) ? m : null;
  }
}
