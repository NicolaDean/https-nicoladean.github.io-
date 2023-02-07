import 'package:flutter/material.dart';
import 'package:portfolio/models/Project_model.dart';

import '../constants/projects.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

class Project extends StatelessWidget {
  final Project_model model;

  const Project({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    Image my_image = Image(
      image: AssetImage(model.img_path),
      width: 300,
      height: 200,
    );

    return GestureDetector(
        onTap: () => context.goNamed('project', extra: model), //
        child: Expanded(
            child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: SelectableText(model.name),
                subtitle: SelectableText(
                  model.tags,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              my_image,
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SelectableText(
                  model.short_explanation,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ElevatedButton(
                  onPressed: () => context.goNamed('project', extra: model),
                  child: Text("Learn More"))
            ],
          ),
        )));
  }
}

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
          items: projects.map((p) {
            return Builder(builder: (BuildContext context) {
              return Project(model: p);
            });
          }).toList(),
        ));
  }
}
