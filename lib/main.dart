import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_bord/data/datasource/local/init_hive.dart';
import 'package:pin_bord/presentation/pages/sticky_2d_scroll.dart';
import 'package:pin_bord/routes/app_router.dart';


void main() async {
  await initHiveDriver();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      theme: ThemeData(
        fontFamily: GoogleFonts.preahvihear().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.greenAccent,
        )
      ),
      // scrollBehavior: const MaterialScrollBehavior().copyWith(
      //   dragDevices: PointerDeviceKind.values.toSet(),
      // ),
    );
    // return MaterialApp(
    //   scrollBehavior: const MaterialScrollBehavior().copyWith(
    //     // Mouse dragging enabled for this demo
    //     dragDevices: PointerDeviceKind.values.toSet(),
    //   ),
    //   home: const Sticky2DScrollPage(),
    // );
  }
}

// ? Deploy to Firebase
// sudo npm install -g firebase-tools
// dart pub global activate flutterfire_cli
// export PATH="$PATH":"$HOME/.pub-cache/bin"
// firebase login
// flutterfire configure
// git ignore
// firebase experiments:enable webframeworks
// firebase init hosting
// flutter build web
// firebase deploy
