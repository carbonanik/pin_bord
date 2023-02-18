import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pin_bord/data/datasource/graph_api_client.dart';
import 'package:pin_bord/routes/app_router.dart';

import 'di/injector.dart';

void main() async {
  await initHiveForFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: NoteStackPage(),
    // );
    return GraphQLProvider(
      client: inj<GraphQLService>().client,
      child: MaterialApp.router(
        routeInformationParser: _appRoute.defaultRouteParser(),
        routerDelegate: _appRoute.delegate(),
      ),
    );
  }
}
