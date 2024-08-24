import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/view_models/certifications_viewmodel.dart';
import 'package:portfolio_v1_02/widgets/custom_elevated_button.dart';

class CertificationsGridview extends StatelessWidget {
  const CertificationsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    CertificationsViewmodel certifications = CertificationsViewmodel();
    String getMonthName(int monthNumber) {
      List<String> months = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December'
      ];
      return months[monthNumber - 1];
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = 2; // Default for small screens

        if (constraints.maxWidth > 600) {
          crossAxisCount = 3; // Medium screens
        }
        if (constraints.maxWidth > 900) {
          crossAxisCount = 4; // Large screens
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: certifications.menu.length, // Example item count
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                minVerticalPadding: 15,
                dense: false,
                title: Text(certifications.menu[index].title),
                subtitle: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(certifications.menu[index].issuer),
                          Text(
                              '${getMonthName(certifications.menu[index].dateTime.month)}, ${certifications.menu[index].dateTime.year.toString()}'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Text('Skills: ${certifications.menu[index].skills}'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomElevatedButtonWithIcon(
                        text: 'View certificate',
                        icon: Icon(Icons.undo),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
