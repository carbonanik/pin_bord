import 'package:flutter/material.dart';

import '../../util/angle_corner.dart';
import '../../domain/entities/stickey.dart';

class StickeyCard extends StatelessWidget {
  final Stickey stickey;

  const StickeyCard({Key? key, required this.stickey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomPaint(
            painter: AngleCorner(color: darken(stickey.color ?? Colors.yellow)),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(stickey.title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(10),
            color: stickey.color,
            child: Text(stickey.content, style: const TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}
