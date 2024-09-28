import 'package:flutter/material.dart';
import 'package:pin_bord/presentation/pages/create_note.dart';
import 'package:pin_bord/presentation/pages/update_note.dart';
import 'package:pin_bord/presentation/pages/sticky_stack.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pin_bord/presentation/pages/select_sticker.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SelectStickerRoute.page, path: '/stickers'),
        AutoRoute(page: CreateNotePageRoute.page, path: '/create-note'),
        AutoRoute(page: UpdateNoteRoute.page, path: '/update-note/:id'),
        AutoRoute(page: StickyStackPageRoute.page, initial: true),
      ];
}
