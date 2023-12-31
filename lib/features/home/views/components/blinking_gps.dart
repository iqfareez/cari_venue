import 'package:flutter/material.dart';

/// GPS blinking icon animation
class BlinkingGps extends StatefulWidget {
  const BlinkingGps({super.key});

  @override
  State<BlinkingGps> createState() => _BlinkingGpsState();
}

class _BlinkingGpsState extends State<BlinkingGps>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final icons = [
    Icons.gps_fixed,
    Icons.gps_not_fixed,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        int index = (_controller.value * 2).floor();
        return Icon(icons[index]);
      },
    );
  }
}
