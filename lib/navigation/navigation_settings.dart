import 'package:flutter/material.dart';

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

pass_args(state) {
  Project_model p = state.extra as Project_model;
  return ProjectDetail(
    detail: p,
  );
}

GoRoute details_route = GoRoute(
  path: 'project',
  name: 'project',
  builder: (BuildContext context, GoRouterState state) => pass_args(state),
);
