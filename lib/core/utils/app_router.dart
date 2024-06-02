import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_view.dart';
import 'package:bookly/features/splash/persentation/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
 static const String splashPath = '/';
 static const String homePath ="/HomeView";
 static const String detailsPath ="/Details";
  static GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Splash();
      },
      ),
      
        GoRoute(
          path:homePath,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ), 
         GoRoute(
          path:detailsPath,
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsView();
          },
        ),
     
   
]
);
}