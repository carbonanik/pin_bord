import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_bord/presentation/widget/svg_sticker_data.dart';

@RoutePage()
class SelectSticker extends StatelessWidget {
  const SelectSticker({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const itemWidth = 160;
    final itemFixedCount = screenWidth ~/ itemWidth;
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemFixedCount,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(26),
            child: SvgPicture.string(SvgStickerData.all[index]),
          );
        },
        itemCount: SvgStickerData.all.length,
      ),
    );
  }
}
