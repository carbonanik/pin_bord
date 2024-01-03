import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/presentation/widget/mini_map.dart';
import 'package:pin_bord/presentation/widget/sticky_draggable.dart';
import 'package:pin_bord/provider/in_window_sticky_provider.dart';
import 'package:pin_bord/provider/is_test_provider.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/routes/app_router.dart';
import 'package:pin_bord/util/responsive.dart';

@RoutePage()
class StickyStackPage extends StatefulWidget {
  const StickyStackPage({Key? key}) : super(key: key);

  @override
  State<StickyStackPage> createState() => _StickyStackPageState();
}

class _StickyStackPageState extends State<StickyStackPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => AutoRouter.of(context).push(CreateNotePageRoute()),
        child: const Icon(Icons.note_add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Consumer(
        builder: (context, ref, child) {
          final inWindow = ref
              .watch(inWindowStickyProvider(screenSize))
              .map(
                (sticky) => StickyDraggable(sticky: sticky),
              )
              .toList();
          return Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onPanUpdate: (details) => ref.read(panPositionProvider.notifier).state += details.delta,
                  child: Container(color: Colors.transparent),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: FilledButton(
                  onPressed: () => ref.read(isTestProvider.notifier).toggle(),
                  child: const Text('Test with 1000 stickies'),
                ),
              ),
              ...inWindow,
              SizedBox(
                width: screenSize.width,
                height: screenSize.height,
              ),
            ],
          );
        },
      ),
    );
  }
}
