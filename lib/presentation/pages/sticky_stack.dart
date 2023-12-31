import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/sticky_draggable.dart';
import 'package:pin_bord/provider/is_test_provider.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';
import 'package:pin_bord/routes/app_router.dart';

@RoutePage()
class StickyStackPage extends StatefulWidget {
  const StickyStackPage({Key? key}) : super(key: key);

  @override
  State<StickyStackPage> createState() => _StickyStackPageState();
}

class _StickyStackPageState extends State<StickyStackPage> {
  @override
  Widget build(BuildContext context) {
    // final router = AutoRouter.of(context);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(CreateNotePageRoute());
        },
        child: const Icon(Icons.note_add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Consumer(
        builder: (context, ref, child) {
          final notifier = ref.watch(stickyProvider);
          final panPosition = ref.watch(panPositionProvider);
          final widgets = notifier.notes
              .where(
                (element) {
                  final elementOffset = (element.position ?? Offset.zero) + panPosition;
                  return Rect.fromPoints(
                    const Offset(-300, -200),
                    Offset(screenSize.width, screenSize.height),
                  ).contains(elementOffset);
                },
              )
              .map(
                (sticky) => StickyDraggable(
                  sticky: sticky,
                  onTap: () async {

                    await notifier.itemToTop(sticky.id);
                  },
                  updatePosition: (offset, id) async => await notifier.updatePosition(offset, id),
                ),
              )
              .toList();
          widgets.sort((a, b) => a.sticky.zIndex.compareTo(b.sticky.zIndex));
          return Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onPanUpdate: (details) {
                    ref.read(panPositionProvider.notifier).state += details.delta;
                  },
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: FilledButton(
                  onPressed: () {
                    ref.read(isTestProvider.notifier).toggle();
                  },
                  child: const Text('Test with 1000 stickies'),
                ),
              ),
              ...widgets,
            ],
          );
        },
      ),
    );
  }
}
