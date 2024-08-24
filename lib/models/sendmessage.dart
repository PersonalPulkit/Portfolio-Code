import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_v1_02/models/sendmessageapiresponse.dart';



Future<SendmessageapiResponse> sendMessage(String name, String email, String subject,
    String message, int phone) async {
  var url = Uri.parse('https://portfolio-api-nanana.koyeb.app/message/sendmessage');
  var apikey = 'apikeyforprod';
  // var data = Sendmessageapi(
  //   name: _name,
  //   email: _email,
  //   phone: _phone,
  //   subject: _subject,
  //   message: _message,
  //   createddate: DateTime.now().toIso8601String(),
  // );
  try {
    var response = await http.post(
      url,
      headers: <String, String>{
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        'API_key_header': apikey,
        // 'Accept':'*/*',
        // 'Accept-Encoding':'gzip, deflate, br',
        // 'Connection':'keep-alive',
      },
      body: jsonEncode(<String, dynamic>{
        "name": name,
        "email": email,
        "phone": phone,
        "subject": subject,
        "message": message,
        "createddate": DateTime.now().toIso8601String()
      }),
    );



    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return SendmessageapiResponse.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create Sendmessageapi.');
    }
  } catch (e) {
    if (kDebugMode) {
      print('Caught error: $e');
    }
    throw Exception('Failed to create Sendmessageapi.');
    // Handle the error here. You might want to show an error message to the user, for example.
  }
}
