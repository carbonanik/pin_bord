import 'package:auto_route/auto_route.dart';
import 'package:pin_bord/presentation/pages/create_note.dart';
import 'package:pin_bord/presentation/pages/stickey_stack.dart';

// add this manually to fix Type 'NavigatorState' not found
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StickeyStackPage, initial: true, path: "/"),
    MaterialRoute(page: CreateNotePage, path: "/create-note")
  ],
  // replaceInRouteName: 'page,Route',
)
class AppRouter extends _$AppRouter {}
