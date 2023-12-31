import 'package:flutter/material.dart';

import '../../../../shared/models/floor.dart';
import '../../utils/clipper.dart';

class ClippedImage extends StatelessWidget {
  const ClippedImage(
      {super.key,
      required this.clipper,
      required this.color,
      required this.floor,
      this.onFloorSelected});

  final Clipper clipper;
  final Color color;
  final Floor floor;
  final Function(Floor floor)? onFloorSelected;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: GestureDetector(
        onTap: () => onFloorSelected?.call(floor),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
