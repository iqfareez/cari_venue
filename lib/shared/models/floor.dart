class Floor {
  final String id;
  final String path;
  final String? color;

  const Floor({
    required this.id,
    required this.path,
    this.color,
  });

  @override
  String toString() => 'Floor(id: $id, path: $path)';
}
