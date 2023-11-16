// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CreateNotePageRoute.name: (routeData) {
      final args = routeData.argsAs<CreateNotePageRouteArgs>(
          orElse: () => const CreateNotePageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateNotePage(key: args.key),
      );
    },
    LogicPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LogicPage(),
      );
    },
    StickyStackPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StickyStackPage(),
      );
    },
  };
}

/// generated route for
/// [CreateNotePage]
class CreateNotePageRoute extends PageRouteInfo<CreateNotePageRouteArgs> {
  CreateNotePageRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CreateNotePageRoute.name,
          args: CreateNotePageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateNotePageRoute';

  static const PageInfo<CreateNotePageRouteArgs> page =
      PageInfo<CreateNotePageRouteArgs>(name);
}

class CreateNotePageRouteArgs {
  const CreateNotePageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CreateNotePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LogicPage]
class LogicPageRoute extends PageRouteInfo<void> {
  const LogicPageRoute({List<PageRouteInfo>? children})
      : super(
          LogicPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogicPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StickyStackPage]
class StickyStackPageRoute extends PageRouteInfo<void> {
  const StickyStackPageRoute({List<PageRouteInfo>? children})
      : super(
          StickyStackPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StickyStackPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
