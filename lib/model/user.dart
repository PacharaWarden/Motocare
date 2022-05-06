import 'package:http/http.dart' as http;

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.uEmail,
    required this.uName,
    required this.uDisplay,
    this.uPhoneNo,
    this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String uEmail;
  String uName;
  String uDisplay;
  String? uPhoneNo;
  String? role;
  DateTime createdAt;
  DateTime updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        uEmail: json["uEmail"],
        uName: json["uName"],
        uDisplay: json["uDisplay"],
        uPhoneNo: json["uPhoneNo"] == null ? "" : json["uPhoneNo"],
        role: json["role"] == null ? "" : json["role"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uEmail": uEmail,
        "uName": uName,
        "uDisplay": uDisplay,
        "uPhoneNo": uPhoneNo,
        "role": role,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

Future<dynamic> Checkuser(String email) async {
  final String path = "http://192.168.2.33:8000/login/$email";
  final res = await http.get(Uri.parse(path));
  if (res.statusCode == 200) {
    return User.fromJson(jsonDecode(res.body));
  } else if (res.statusCode == 500) {
    return null;
  } else {
    throw Exception("False to check");
  }
}

Future<User> regisuser(String email, String name, String display,String role) async {
  final String path = "http://192.168.2.33:8000/regisuser";
  final body = jsonEncode({
    "uEmail": email,
    "uName": name,
    "uDisplay": display,
    "role": role,
  });
  final res = await http.post(Uri.parse(path),
      body: body, headers: {'Content-Type': 'application/json', 'Accept': '/'});
  if (res.statusCode == 200) {
    return User.fromJson(jsonDecode(res.body));
  } else {
    throw Exception("False to check");
  }
}
