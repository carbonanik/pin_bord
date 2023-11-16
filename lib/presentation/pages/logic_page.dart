
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/presentation/widget/sticky_draggable.dart';
import 'package:pin_bord/provider/sticky_provider.dart';
import 'package:pin_bord/routes/app_router.dart';

@RoutePage()
class LogicPage extends StatefulWidget {
  const LogicPage({Key? key}) : super(key: key);

  @override
  State<LogicPage> createState() => _StickyStackPageState();
}

class _StickyStackPageState extends State<LogicPage> {
  @override
  Widget build(BuildContext context) {
    // final router = AutoRouter.of(context);
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final notifier = ref.watch(stickyProvider);
        return Stack(
          children: notifier.notes
              .map(
                (s) => StickyDraggable(
              sticky: s,
              onTap: () async {
                await notifier.itemToTop(s.id);
              },
              updatePosition: (offset, id) async => notifier.updatePosition(offset, id),
            ),
          )
              .toList(),
        );
      }),
    );
  }
}
