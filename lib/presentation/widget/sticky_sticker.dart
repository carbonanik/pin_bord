import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StickySticker extends ConsumerWidget {
  final Sticky sticky;

  const StickySticker({
    Key? key,
    required this.sticky,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: sticky.size?.width,
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints(minHeight: 100),
            padding: const EdgeInsets.all(10),
            // color: sticky.color ?? ref.read(colorsProvider).last,
            child: SvgPicture.string(sticky.content),
          ),
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   child: Container(
          //     padding: const EdgeInsets.all(2),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(8),
          //       color: Colors.grey.shade500,
          //     ),
          //     child: const Icon(
          //       Icons.close,
          //       size: 12,
          //       color: Colors.white,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}