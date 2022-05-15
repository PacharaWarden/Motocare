
class UserAppointment {
    UserAppointment({
        required this.userId,
        required this.status,
    });

    String userId;
    String status;

    factory UserAppointment.fromJson(Map<String, dynamic> json) => UserAppointment(
        userId: json["userId"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "status": status,
    };
}
