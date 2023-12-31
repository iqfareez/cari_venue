import 'package:flutter/material.dart';

class Room {
  Room({
    required this.path,
    required this.id,
    required this.title,
    required this.gradient,
    required this.seqNo,
  }) : rect = path.getBounds();

  final Path path;
  final Rect rect;
  final String id;
  final String title;
  final Gradient gradient;
  final int seqNo;
}
