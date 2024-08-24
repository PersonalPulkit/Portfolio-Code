import 'dart:convert';

Sendmessageapi sendmessageapiFromJson(String str) => Sendmessageapi.fromJson(json.decode(str));

String sendmessageapiToJson(Sendmessageapi data) => json.encode(data.toJson());

class Sendmessageapi {
  String name;
  String email;
  int phone;
  String subject;
  String message;
  DateTime createddate;

  Sendmessageapi({
    required this.name,
    required this.email,
    required this.phone,
    required this.subject,
    required this.message,
    required this.createddate,
  });

  factory Sendmessageapi.fromJson(Map<String, dynamic> json) => Sendmessageapi(
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    subject: json["subject"],
    message: json["message"],
    createddate: DateTime.parse(json["createddate"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone": phone,
    "subject": subject,
    "message": message,
    "createddate": createddate.toIso8601String(),
  };
}