import '../models/Project_model.dart';

const List<Project_model> projects = [
  Project_model(
      0,
      "Insulink",
      "React",
      "assets/images/projects/insulink.webp",
      "Developed an App to calculate Insuline Dose after meals and keep track of sugar lever during days.",
      ""),
  Project_model(
      1,
      "Caliper-CUDA",
      "CUDA , C++",
      "assets/images/projects/p2.jpeg",
      "Created a CUDA version of Caliper framework to simulate MTTF of a multicore CPU.",
      ""),
  Project_model(
      2,
      "DeepLearning Challenges",
      "Tensorflow , Keras",
      "assets/images/projects/deeplearning.jpg",
      "I led my team in DeepLearning Kaggle style competition for DL course at Polimi.",
      ""),
];

const Project_model missing_project = Project_model(
    0,
    "Error 404 No Project Found",
    "Ufff....",
    "assets/images/projects/deeplearning.jpg",
    "",
    "");
