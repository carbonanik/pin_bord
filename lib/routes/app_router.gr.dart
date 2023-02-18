// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    StickeyStackPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const StickeyStackPage());
    },
    CreateNotePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CreateNotePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(StickeyStackPageRoute.name, path: '/'),
        RouteConfig(CreateNotePageRoute.name, path: '/create-note-page')
      ];
}

/// generated route for
/// [StickeyStackPage]
class StickeyStackPageRoute extends PageRouteInfo<void> {
  const StickeyStackPageRoute() : super(StickeyStackPageRoute.name, path: '/');

  static const String name = 'StickeyStackPageRoute';
}

/// generated route for
/// [CreateNotePage]
class CreateNotePageRoute extends PageRouteInfo<void> {
  const CreateNotePageRoute()
      : super(CreateNotePageRoute.name, path: '/create-note-page');

  static const String name = 'CreateNotePageRoute';
}
