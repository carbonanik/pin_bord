import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';

import '../../models/sticky/sticky.dart';

class MiniMap extends ConsumerWidget {
  const MiniMap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final aspectRatio = size.width / size.height;
    final panPosition = ref.watch(panPositionProvider);

    final stickies = ref.watch(stickyProvider).notes;

    double top = 0;
    double left = 0;
    double bottom = 0;
    double right = 0;
    for (var element in stickies) {
      if (element.position.dy < top) {
        top = element.position.dy;
      }
      if (element.position.dx < left) {
        left = element.position.dx;
      }
      if (element.position.dy > bottom) {
        bottom = element.position.dy;
      }
      if (element.position.dx > right) {
        right = element.position.dx;
      }
    }

    final rect = Rect.fromLTRB(left, top, right, bottom);
    final rectAspectRatio = rect.width / rect.height;

    return Stack(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        Positioned(
          left: panPosition.dx * .2,
          top: panPosition.dy * .2,
          child: Container(
            width: 50 * aspectRatio,
            height: 50,
            color: Colors.blue,
          ),
        ),
        Positioned.fill(
          child: CustomPaint(
            size: Size(200, 200),
            painter: MiniMapPainter(
              rect: rect,
              stickies: stickies,
            ),
          ),
        ),
      ],
    );
  }
}

class MiniMapPainter extends CustomPainter {
  final Rect rect;
  final List<Sticky> stickies;

  const MiniMapPainter({
    required this.rect,
    required this.stickies,
  });

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(rect, Paint()..color = Colors.red);
    // stickies.forEach((element) {
    //   canvas.drawRect(
    //     Rect.fromCenter(
    //       center: element.position,
    //       width: 10,
    //       height: 10,
    //     ),
    //     Paint()..color = Colors.blue,
    //   );
    // });

    // canvas.save();
    //
    // canvas.scale(.01);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
