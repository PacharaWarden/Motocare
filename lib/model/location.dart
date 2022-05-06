import 'dart:convert';

Location welcomeFromJson(String str) => Location.fromJson(json.decode(str));

String welcomeToJson(Location data) => json.encode(data.toJson());

class Location {
  Location({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String latitude;
  String longitude;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        userId: json["userId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "latitude": latitude,
        "longitude": longitude,
        "userId": userId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
