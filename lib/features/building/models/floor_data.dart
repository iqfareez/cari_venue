import 'package:flutter/material.dart';

import 'room.dart';

class FloorData {
  FloorData({
    required this.size,
    required this.rooms,
  });

  final Size size;
  final Map<String, Room> rooms;
}
