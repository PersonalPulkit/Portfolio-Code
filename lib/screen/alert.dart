import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});
  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: AlertDialog(
        title: const Text('Alert!'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                  'This Website is under development process.\n\nBy continue you \'Agree\' all Terms & Conditions'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Continue'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.welcome);
            },
          ),
        ],
      ),
    );
  }
}
