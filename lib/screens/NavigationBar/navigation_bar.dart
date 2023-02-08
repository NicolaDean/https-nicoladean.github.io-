import 'package:flutter/material.dart';

//UTILS
import '../../utils/responsive-manager.dart';
import 'package:go_router/go_router.dart';
import '../../constants/navigations.dart';

//WIDGETS
import '../../widgets/responsive_layout.dart';

class MyNavigationBar {
  static AppBar getAppBar(BuildContext context) {
    return AppBar(
      title: buildTitle(),
      titleSpacing: 20.0,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: getHomeActions(context),
    );
  }

  static AppBar getAppBarMobile() {
    return AppBar(
      title: buildTitle(),
      titleSpacing: 20.0,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  static List<Widget> getHomeActions(BuildContext context) {
    return [
      TextButton(
          onPressed: () => context.go(routes.initial_setting),
          child: const Text("Home")),
      TextButton(
          onPressed: () => context.go('/project'),
          child: const Text("Project")),
      TextButton(onPressed: () => {}, child: const Text("Contacts")),
    ];
  }

  static Drawer getDrawer(BuildContext context) {
    return Drawer(
        child: ListView(
            padding: const EdgeInsets.all(20),
            children: getHomeActions(context)));
  }

  static Widget buildTitle() {
    return RichText(
      text: const TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        children: <TextSpan>[
          TextSpan(
            text: "Portfoli",
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: "o",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        ],
      ),
    );
  }
}
