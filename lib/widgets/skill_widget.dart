import 'package:flutter/material.dart';

import '../constants/skills.dart';

class Skill extends StatelessWidget {
  final String name;

  const Skill({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          border: Border.all(color: Colors.deepOrange),
          borderRadius: BorderRadius.all(Radius.circular(400))),
      child: Text(textAlign: TextAlign.center, this.name),
    );
  }
}

class SkillsContainer extends StatelessWidget {
  final String file_name;

  const SkillsContainer(
      {super.key, this.file_name = "./assets/jsons/skills.json"});

  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: skills.length,
        itemBuilder: (BuildContext context, int index) {
          return Skill(name: skills[index]);
        });
  }
}
