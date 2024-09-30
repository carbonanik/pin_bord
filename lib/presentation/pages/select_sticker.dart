import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_bord/presentation/widget/svg_sticker_data.dart';

import '../../models/sticky/sticky.dart';
import '../../provider/note_color_provider.dart';
import '../../provider/sticky_provider.dart';

@RoutePage()
class SelectSticker extends ConsumerWidget {
  const SelectSticker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    const itemWidth = 160;
    final itemFixedCount = screenWidth ~/ itemWidth;
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemFixedCount,
        ),
        itemBuilder: (context, index) {
          return _buildStickerItem(index, ref, context);
        },
        itemCount: SvgStickerData.all.length,
      ),
    );
  }

  GestureDetector _buildStickerItem(
      int index, WidgetRef ref, BuildContext context) {
    void createSticker() {
      final notifier = ref.read(stickyProvider.notifier);
      notifier.createStickySticker(
        title: 'Sticker',
        sticker: SvgStickerData.all[index],
      );

      AutoRouter.of(context).maybePop();
    }

    return GestureDetector(
      onTap: createSticker,
      child: Container(
        padding: const EdgeInsets.all(26),
        child: SvgPicture.string(SvgStickerData.all[index]),
      ),
    );
  }
}
