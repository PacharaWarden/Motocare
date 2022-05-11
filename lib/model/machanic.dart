import 'dart:convert';

import 'location.dart';

import 'package:http/http.dart' as http;

Machanic welcomeFromJson(String str) => Machanic.fromJson(json.decode(str));

String welcomeToJson(Machanic data) => json.encode(data.toJson());

class Machanic {
  Machanic({
    required this.id,
    required this.idCard,
    required this.mfName,
    required this.mlName,
    required this.workPlaceImage,
    required this.faceImage,
    required this.workPlace,
    required this.userId,
    required this.locationId,
    required this.createdAt,
    required this.updatedAt,
    required this.location,
  });

  int id;
  String idCard;
  String mfName;
  String mlName;
  String workPlaceImage;
  String faceImage;
  String workPlace;
  int userId;
  int locationId;
  DateTime createdAt;
  DateTime updatedAt;
  Location location;

  factory Machanic.fromJson(Map<String, dynamic> json) => Machanic(
        id: json["id"],
        idCard: json["idCard"],
        mfName: json["mfName"],
        mlName: json["mlName"],
        workPlaceImage: json["workPlaceImage"],
        faceImage: json["faceImage"],
        workPlace: json["workPlace"],
        userId: json["userId"],
        locationId: json["locationId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        location: Location.fromJson(json["location"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idCard": idCard,
        "mfName": mfName,
        "mlName": mlName,
        "workPlaceImage": workPlaceImage,
        "faceImage": faceImage,
        "workPlace": workPlace,
        "userId": userId,
        "locationId": locationId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "location": location.toJson(),
      };
}

Future<List<Machanic>> Getmachanic() async {
  final String path = "http://192.168.1.111:8000/getMachanic";
  final res = await http.get(Uri.parse(path));
  if (res.statusCode == 200) {
    Iterable l = json.decode(res.body);
    List<Machanic> data = l.map((g) => Machanic.fromJson(g)).toList();
    return data;
  } else if (res.statusCode == 500) {
    return [];
  } else {
    throw Exception("False to check");
  }
}
