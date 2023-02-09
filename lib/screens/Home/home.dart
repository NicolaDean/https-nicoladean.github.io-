import 'package:flutter/material.dart';

//UTILS
import '../../utils/responsive-manager.dart';

//WIDGETS
import '../../widgets/responsive_layout.dart';
import './home_mobile.dart';
import './home_tablet.dart';
import './home_desktop.dart';

//CONSTANTS
import '../../constants/strings.dart';
import '../../constants/theme.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveManager.setConfiguration(context);
    return ResponsiveLayout(
        mobileScreen: Home_Mobile(),
        desktopScreen: Home_Desktop(),
        tabletScreen: Home_tablet());
  }

  Widget ImagePortrait() {
    return CircleAvatar(
      radius: 100,
      backgroundColor: myColors.secondary,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/my-portrait2.jpg'),
        radius: 95,
      ),
    );
  }

  Widget aboutMeTitle() {
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
            text: "About ",
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: "Me",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        ],
      ),
    );
  }

  Widget getAboutMe() {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        aboutMeTitle(),
        SizedBox(
          height: 10,
        ),
        SelectableText(
            style: TextStyle(fontSize: 20), App_IT.about_me_subtitle),
        SelectableText(textAlign: TextAlign.justify, App_IT.about_me_body),
      ]),
    );
  }
}
