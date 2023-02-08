import 'package:flutter/material.dart';

import '../../constants/strings.dart';
import 'package:go_router/go_router.dart';
import '../../constants/navigations.dart';
import '../../constants/theme.dart';

//---------------------------------------------------------------------------------
//---------------------Actions Navigation Logic------------------------------------
//---------------------------------------------------------------------------------
List<Widget> getHomeActions(context) {
  BuildContext ctx = context;
  return [
    TextButton(
        onPressed: () => ctx.go(routes.initial_setting),
        child: const Text("Home")),
    TextButton(
        onPressed: () => context.go('/project'), child: const Text("Project")),
    TextButton(onPressed: () => {}, child: const Text("Contacts")),
  ];
}

//---------------------------------------------------------------------------------
//---------------------HEADER BLOCKS------------------------------------
//---------------------------------------------------------------------------------
Widget buildTitle() {
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

//---------------------------------------------------------------------------------
//---------------------ABOUT ME TITLE BLOCKS------------------------------------
//---------------------------------------------------------------------------------
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
      SelectableText(style: TextStyle(fontSize: 20), App_IT.about_me_subtitle),
      SelectableText(textAlign: TextAlign.justify, App_IT.about_me_body),
    ]),
  );
}

//---------------------------------------------------------------------------------
//---------------------IMAGE IN HOME------------------------------------
//---------------------------------------------------------------------------------
/*Image my_image = Image.network(
  "https://thumbs.dreamstime.com/z/icona-colori-rgb-di-esperto-computer-programmatore-codifica-manuale-sul-portatile-sviluppatore-software-freelance-posto-lavoro-214997667.jpg",
  width: 300,
  height: 300,
);*/

Image my_image = Image(image: AssetImage('images/my-portrait2.jpg'));

Widget ImagePortrait() {
  return CircleAvatar(
    radius: 100,
    backgroundColor: myColors.secondary,
    child: CircleAvatar(
      backgroundImage: AssetImage('images/my-portrait2.jpg'),
      radius: 95,
    ),
  );
}
