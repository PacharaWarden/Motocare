//     final appointmentHistory = appointmentHistoryFromJson(jsonString);

import 'dart:convert';

import 'package:changrode/model/appointment.dart';
import 'package:changrode/model/user.dart';
import 'package:http/http.dart' as http;

List<AppointmentHistory> appointmentHistoryFromJson(String str) =>
    List<AppointmentHistory>.from(
        json.decode(str).map((x) => AppointmentHistory.fromJson(x)));

String appointmentHistoryToJson(List<AppointmentHistory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AppointmentHistory {
  AppointmentHistory({
    required this.id,
    required this.userId,
    required this.appointmentId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.appointment,
  });

  int id;
  int userId;
  int appointmentId;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  User user;
  Appointments appointment;

  factory AppointmentHistory.fromJson(Map<String, dynamic> json) =>
      AppointmentHistory(
        id: json["id"],
        userId: json["userId"],
        appointmentId: json["appointmentId"],
        status: json["status"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        user: User.fromJson(json["user"]),
        appointment: Appointments.fromJson(json["Appointment"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "appointmentId": appointmentId,
        "status": status,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "user": user.toJson(),
        "Appointment": appointment.toJson(),
      };
}

Future<List<AppointmentHistory>> getAppointment(int userId) async {
  final String url = "http://192.168.17.186:8000/getAppointment/$userId";
  print(url);
  final res = await http.get(Uri.parse(url));
  if (res.statusCode == 200) {
    Iterable l = json.decode(res.body);
    List<AppointmentHistory> appointmentHistory =
        l.map((g) => AppointmentHistory.fromJson(g)).toList();
    return appointmentHistory;
  } else if (res.statusCode == 500) {
    return [];
  } else {
    throw Exception('Failed to get appointment list');
  }
}

Future<bool> UpdateStatusAppointment(int appointmentId, String status) async {
  String url = "http://192.168.17.186:8000/updateStatusAppointment";
  final body = jsonEncode({"appointmentId": appointmentId, "status": status});
  final res = await http.post(Uri.parse(url),
      body: body,
      headers: {'Content-Type': 'application/json', 'Accept': '*/*'});
  if (res.statusCode == 200) {
    return true;
  } else if (res.statusCode == 500) {
    return false;
  } else {
    throw Exception('Failed to update status');
  }
}
