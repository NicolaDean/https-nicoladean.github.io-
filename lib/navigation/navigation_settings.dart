import 'package:flutter/material.dart';
import 'package:portfolio/constants/projects.dart';

//SCREENS WIDGETS:
import '../screens/Home/home.dart';
import '../screens/ProjectDetail/project_detail.dart';
import '../widgets/project_widget.dart';
import '../models/Project_model.dart';

//ROUTER
import 'package:go_router/go_router.dart';
import '../constants/navigations.dart';

//-----------------------------------------------------
//-------------------ROOT------------------------------
//-----------------------------------------------------

final GoRouter router_config = GoRouter(routes: <GoRoute>[
  GoRoute(
      path: routes.initial_setting,
      builder: (BuildContext context, GoRouterState state) => Home(),
      routes: <GoRoute>[
        details_route,
      ])
]);

//-----------------------------------------------------
//------------DETAIL-PAGE------------------------------
//-----------------------------------------------------

//https://pub.dev/documentation/go_router/latest/topics/Configuration-topic.html

pass_args(state) {
  print("TRY UPDATING PROJECT PAGE");
  int id;

  try {
    id = int.parse((state.params['project_id']));
  } catch (e) {
    print("ERRORE URL PROJECT MANCANTE");
    id = 0;
  }

  return ProjectDetail(
    id: id,
  );
}

GoRoute details_route = GoRoute(
  path: 'project/:project_id',
  name: 'project',
  builder: (BuildContext context, GoRouterState state) => pass_args(state),
);
