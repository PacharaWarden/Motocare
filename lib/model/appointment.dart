// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;


Appointments appointmentsFromJson(String str) => Appointments.fromJson(json.decode(str));

String appointmentsToJson(Appointments data) => json.encode(data.toJson());

class Appointments {
  Appointments({
    required this.latitude,
    required this.longitude,
    required this.date,
    required this.time,
    required this.jobDescription,
  });

  String latitude;
  String longitude;
  DateTime date;
  String time;
  String jobDescription;

  factory Appointments.fromJson(Map<String, dynamic> json) => Appointments(
        latitude: json["latitude"],
        longitude: json["longitude"],
        date: DateTime.parse(json["date"]),
        time: json["time"],
        jobDescription: json["jobDescription"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "date": date.toIso8601String(),
        "time": time,
        "jobDescription": jobDescription,
      };
}
