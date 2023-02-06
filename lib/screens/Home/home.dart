import 'package:flutter/material.dart';

//UTILS
import '../../utils/responsive-manager.dart';

//WIDGETS
import '../../widgets/responsive_layout.dart';
import './home_mobile.dart';
import './home_tablet.dart';
import './home_desktop.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveManager.setConfiguration(context);
    return ResponsiveLayout(
        mobileScreen: Home_Mobile(),
        desktopScreen: Home_Desktop(),
        tabletScreen: Home_tablet());
  }
}
