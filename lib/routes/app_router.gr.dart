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
    NoteStackPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NoteStackPage());
    },
    CreateNotePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CreateNotePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(NoteStackPageRoute.name, path: '/'),
        RouteConfig(CreateNotePageRoute.name, path: '/create-note-page')
      ];
}

/// generated route for
/// [NoteStackPage]
class NoteStackPageRoute extends PageRouteInfo<void> {
  const NoteStackPageRoute() : super(NoteStackPageRoute.name, path: '/');

  static const String name = 'NoteStackPageRoute';
}

/// generated route for
/// [CreateNotePage]
class CreateNotePageRoute extends PageRouteInfo<void> {
  const CreateNotePageRoute()
      : super(CreateNotePageRoute.name, path: '/create-note-page');

  static const String name = 'CreateNotePageRoute';
}
