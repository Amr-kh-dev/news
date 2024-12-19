class Sources {
  String? id;
  String? name;

  Sources({this.id, this.name});

  factory Sources.fromJson(Map<String, dynamic> json) => Sources(
        id: json['id'] as String?,
        name: json['name'] as String?,
      );
}
