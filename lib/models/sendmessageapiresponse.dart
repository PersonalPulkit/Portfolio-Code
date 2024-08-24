
// To parse this JSON data, do
//
//     final sendmessageapiResponse = sendmessageapiResponseFromJson(jsonString);



import 'dart:convert';

SendmessageapiResponse sendmessageapiResponseFromJson(String str) => SendmessageapiResponse.fromJson(json.decode(str));

String sendmessageapiResponseToJson(SendmessageapiResponse data) => json.encode(data.toJson());

class SendmessageapiResponse {
  String result;

  SendmessageapiResponse({
    required this.result,
  });

  factory SendmessageapiResponse.fromJson(Map<String, dynamic> json) => SendmessageapiResponse(
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
  };
}
