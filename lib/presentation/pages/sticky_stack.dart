import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/presentation/pages/select_sticker.dart';
import 'package:pin_bord/presentation/widget/sticky_draggable.dart';
import 'package:pin_bord/presentation/widget/sticky_note.dart';
import 'package:pin_bord/provider/in_window_sticky_provider.dart';
import 'package:pin_bord/provider/is_test_provider.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/provider/zoom_provider.dart';
import 'package:pin_bord/routes/app_router.dart';
import 'package:pin_bord/util/color_ext.dart';

@RoutePage()
class StickyStackPage extends StatefulWidget {
  const StickyStackPage({Key? key}) : super(key: key);

  @override
  State<StickyStackPage> createState() => _StickyStackPageState();
}

class _StickyStackPageState extends State<StickyStackPage> {
  bool showTest = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer.lighten2(),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: const Offset(1, 1),
                  color: Colors.grey.withOpacity(.4),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                onTap: () {
                  context.pushRoute(const SelectStickerRoute());
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Icon(Icons.emoji_emotions),
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () => AutoRouter.of(context).push(CreateNotePageRoute()),
            child: const Icon(Icons.sticky_note_2),
          ),
        ],
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
                  onPanUpdate: (details) => ref
                      .read(panPositionProvider.notifier)
                      .state += details.delta,
                  child: Container(color: Colors.transparent),
                ),
              ),
              if (showTest)
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: FilledButton(
                    onPressed: () => ref.read(isTestProvider.notifier).toggle(),
                    child: const Text('Test with 1000 stickies'),
                  ),
                ),
              ...inWindow,
              Positioned(
                bottom: 0,
                right: 0,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        ref.read(zoomProvider.notifier).reset();
                      },
                      icon: const Icon(
                        Icons.one_x_mobiledata,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        ref.read(zoomProvider.notifier).zoomIn();
                      },
                      icon: const Icon(
                        Icons.zoom_in,
                        color: Colors.black,
                      ),
                    ),
                    Text(ref.watch(zoomProvider).toStringAsFixed(1)),
                    IconButton(
                      onPressed: () {
                        ref.read(zoomProvider.notifier).zoomOut();
                      },
                      icon: const Icon(
                        Icons.zoom_out,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
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
