class Venue {
  final String key;
  final String name;
  final String? level;
  final String? number;
  final String? description;
  final List<String> imagesUrl;
  final double latitude;
  final double longitude;

  Venue({
    required this.key,
    required this.name,
    this.level,
    this.number,
    this.description,
    required this.imagesUrl,
    required this.latitude,
    required this.longitude,
  });

  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      key: json['key'],
      name: json['name'],
      level: json['level'],
      number: json['number'],
      description: json['description'],
      imagesUrl: json['imagesUrl'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'level': level,
      'number': number,
      'description': description,
      'imagesUrl': imagesUrl,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return 'Venue(name: $name, level: $level, number: $number, description: $description, imagesUrl: $imagesUrl, latitude: $latitude, longitude: $longitude)';
  }
}
