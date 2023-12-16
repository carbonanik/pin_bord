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
    StickyStackPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StickyStackPage(),
      );
    },
    UpdateNoteRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UpdateNoteRouteArgs>(
          orElse: () =>
              UpdateNoteRouteArgs(updateId: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdateNote(
          updateId: args.updateId,
          key: args.key,
        ),
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

/// generated route for
/// [UpdateNote]
class UpdateNoteRoute extends PageRouteInfo<UpdateNoteRouteArgs> {
  UpdateNoteRoute({
    required String updateId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateNoteRoute.name,
          args: UpdateNoteRouteArgs(
            updateId: updateId,
            key: key,
          ),
          rawPathParams: {'id': updateId},
          initialChildren: children,
        );

  static const String name = 'UpdateNoteRoute';

  static const PageInfo<UpdateNoteRouteArgs> page =
      PageInfo<UpdateNoteRouteArgs>(name);
}

class UpdateNoteRouteArgs {
  const UpdateNoteRouteArgs({
    required this.updateId,
    this.key,
  });

  final String updateId;

  final Key? key;

  @override
  String toString() {
    return 'UpdateNoteRouteArgs{updateId: $updateId, key: $key}';
  }
}
