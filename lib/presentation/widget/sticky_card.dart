import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/routes/app_router.dart';
import 'package:pin_bord/util/angle_corner.dart';

class StickyCard extends ConsumerWidget {
  final Sticky sticky;

  const StickyCard({Key? key, required this.sticky}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomPaint(
                painter: AngleCorner(
                  color: darken(
                    sticky.color ?? Colors.yellow,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      sticky.title,
                      style: GoogleFonts.preahvihear(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                constraints: const BoxConstraints(minHeight: 100),
                padding: const EdgeInsets.all(10),
                color: sticky.color,
                child: Text(
                  sticky.content,
                  style: GoogleFonts.kalam(fontSize: 20),
                ),
              )
            ],
          ),
        ),
        // Positioned(
        //   top: 0,
        //   right: 35,
        //   child: GestureDetector(
        //     onTap: () async {
        //       await ref.read(stickyProvider.notifier).removeSticky(sticky.id);
        //     },
        //     child: const Padding(
        //       padding: EdgeInsets.all(10.0),
        //       child: Icon(
        //         size: 20,
        //         Icons.delete,
        //       ),
        //     ),
        //   ),
        // ),
        Positioned(
          top: 0,
          right: 35,
          child: GestureDetector(
            onTap: () {
              AutoRouter.of(context).push(UpdateNoteRoute(updateId: sticky.id));
            },
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                size: 20,
                Icons.edit,
              ),
            ),
          ),
        )
      ],
    );
  }
}

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}
