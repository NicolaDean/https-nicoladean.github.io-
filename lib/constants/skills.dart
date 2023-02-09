import 'package:flutter/material.dart';

const List<String> skills = [
  "C",
  "C++",
  "CUDA",
  "Python",
  "Tensorflow",
  "Keras",
  "Flutter",
  "React",
  "Java",
  "Linux"
];

class Skill_model {
  String name;
  String shortDescription;
  String fullDescription;
  Icon? customIcon;

  Skill_model(
      this.name, this.shortDescription, this.fullDescription, this.customIcon);
}

List<Skill_model> skills_advanced = [
  Skill_model(
      "C , C++ , CUDA",
      "I've worked on multiple project involving low level programming on various scenario. Eg: Vulkan game engine, STM32 microcontroller, CUDA accelerator....",
      "",
      Icon(Icons.computer)),
  Skill_model(
      "Tensorflow , Keras , Pandas",
      "Thanks to different courses about ML, DL, Data Mining I have practiced those tools in many labs and projects.",
      "",
      Icon(Icons.adb)),
  Skill_model(
      "React , Flutter",
      "I have developed a full app in React Native, this website is done in Flutter and i have been the Tutor for a Policollege Flutter Course",
      "",
      Icon(Icons.mobile_friendly)),
  Skill_model(
      "STM32 , Arduino, Esp32",
      "Since from secondary School I worked on many little projects with Arduino, Esp32 and STM32",
      "",
      Icon(Icons.bug_report_outlined)),
  Skill_model("Linux (Ubuntu)", "I switched to Linux from 4 5 years", "",
      Icon(Icons.computer)),
];
