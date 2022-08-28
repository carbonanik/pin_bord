import 'package:auto_route/auto_route.dart';
import 'package:pin_bord/presentation/pages/create_note.dart';
import 'package:pin_bord/presentation/pages/note_stack.dart';

// add this manually to fix Type 'NavigatorState' not found
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: NoteStackPage, initial: true),
    MaterialRoute(page: CreateNotePage)
  ],
  // replaceInRouteName: 'page,Route',
)
class AppRouter extends _$AppRouter {}
