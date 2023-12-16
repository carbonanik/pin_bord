import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_bord/data/datasource/local/init_hive.dart';
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
      ),
    );
    // return MaterialApp(
    //   home: StickyStackPage(),
    // );
  }
}
