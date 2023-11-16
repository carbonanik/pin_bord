import 'package:flutter/material.dart';
import 'package:pin_bord/presentation/pages/create_note.dart';
import 'package:pin_bord/presentation/pages/sticky_stack.dart';
import 'package:pin_bord/presentation/pages/logic_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page')
class AppRouter extends _$AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(page: CreateNotePageRoute.page),
    AutoRoute(page: StickyStackPageRoute.page, initial: true),
    AutoRoute(page: LogicPageRoute.page),
  ];
}