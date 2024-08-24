import 'package:flutter/material.dart';

// import '../models/sendmessage.dart';
import '../models/sendmessageapiresponse.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _subject = TextEditingController();
  final _message = TextEditingController();
  Future<SendmessageapiResponse>? _futureSendMessage;
  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _name.dispose();
    _phone.dispose();
    _subject.dispose();
    _message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return (_futureSendMessage == null)
        ? Container(
            width: size.width,
            height: size.height,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: size.width * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Contact",
                  style: TextStyle(fontSize: 30),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            elevation: 8,
                            color: Colors.transparent,
                            child: CustomTextField(
                              text: 'Full Name',
                              fetchtext: _name,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            elevation: 8,
                            color: Colors.transparent,
                            child: CustomTextField(
                              text: 'Email Address',
                              fetchtext: _email,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            elevation: 8,
                            color: Colors.transparent,
                            child: CustomTextField(
                              // typeKeyboard: TextInputType.number,
                              text: 'Phone Number',
                              fetchtext: _phone,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            elevation: 8,
                            color: Colors.transparent,
                            child: CustomTextField(
                              text: 'Subject',
                              fetchtext: _subject,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(12),
                      elevation: 8,
                      color: Colors.transparent,
                      child: CustomTextField(
                        text: 'Your Message',
                        fetchtext: _message,
                        maxlines: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomElevatedButtonWithIcon(
                      text: "Send Message",
                      icon: Icon(Icons.message),
                      // callBack: _sendData,
                    ),
                  ],
                ),
              ],
            ),
          )
        : buildFutureBuilder();
  }

  // void _sendData() async {
  //   String name = _name.text;
  //   String email = _email.text;
  //   String subject = _subject.text;
  //   String message = _message.text;
  //   int phone = int.parse(_phone.text);
  //
  //   setState(() {
  //     _futureSendMessage = sendMessage(name, email, subject, message, phone);
  //   });
  // }

  FutureBuilder<SendmessageapiResponse> buildFutureBuilder() {
    return FutureBuilder<SendmessageapiResponse>(
      future: _futureSendMessage,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Center(child: Text('Message successfully sent'));
        } else if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
