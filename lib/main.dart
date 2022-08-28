import 'package:flutter/material.dart';
import 'package:pin_bord/di/injector.dart';
import 'package:pin_bord/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRoute.defaultRouteParser(),
      routerDelegate: _appRoute.delegate(),
    );
  }
}
