import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/routes/app_router.dart';
import 'package:pin_bord/util/color_ext.dart';
import 'package:pin_bord/util/corner_cut.dart';

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
                painter: CornerCut(
                  color: (sticky.color ?? ref.read(colorsProvider).last).darken2(),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      sticky.title,
                      style: GoogleFonts.kalam(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: (sticky.color ?? ref.read(colorsProvider).last).darken2(.5),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
                  style: GoogleFonts.kalam(
                    fontSize: 20,
                    color: (sticky.color ?? ref.read(colorsProvider).last).darken2(.7),
                  ),
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
