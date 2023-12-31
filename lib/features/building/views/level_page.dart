import 'package:flutter/material.dart';

import 'floor_map.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Building: E1'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Level 1'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const FloorMap(level: 1)));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Level 2'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const FloorMap(level: 2)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
