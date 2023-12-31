class FloorMetadata {
  late Data data;

  FloorMetadata({required this.data});

  FloorMetadata.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data.toJson();
    return data;
  }
}

class Data {
  late E1 e1;

  Data({required this.e1});

  Data.fromJson(Map<String, dynamic> json) {
    e1 = E1.fromJson(json['E1']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['E1'] = e1.toJson();
    return data;
  }
}

class E1 {
  List<L1>? l1;

  E1({this.l1});

  E1.fromJson(Map<String, dynamic> json) {
    if (json['L1'] != null) {
      l1 = <L1>[];
      json['L1'].forEach((v) {
        l1!.add(L1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (l1 != null) {
      data['L1'] = l1!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class L1 {
  String? id;
  String? name;

  L1({this.id, this.name});

  L1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
