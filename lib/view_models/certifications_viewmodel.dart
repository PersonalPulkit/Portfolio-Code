import 'package:portfolio_v1_02/models/certifications_model.dart';

class CertificationsViewmodel {
  final _menu = <CertificationsModel>[
    CertificationsModel(
      title: 'MongoDB Python Developer Path',
      link: 'https://learn.mongodb.com/c/V74ze-vyQc-Nurjdr7Gelw',
      skills: 'MongoDB, CRUD, Aggregation pipeline, transaction, etc',
      dateTime: DateTime(2024, 8),
      issuer: 'MongoDB',
    ),
    CertificationsModel(
      title:
          'Career Essentials in Software Development by Microsoft and LinkedIn',
      link:
          'https://www.linkedin.com/learning/certificates/10d2732b12aec0ed01a5da79fca5fa733bf0d86ee78ddec5c2c40855ca5e8b76',
      skills: 'Software Development, Programming',
      dateTime: DateTime(2024, 5),
      issuer: 'Microsoft',
    ),
    CertificationsModel(
      title: 'Flutter',
      link:
          'https://storage.googleapis.com/programminghub/certificate%2F1706896637883.pdf',
      skills: 'Flutter, Android, IOS, Web, Desktop, TV, etc.',
      dateTime: DateTime(2024, 2),
      issuer: 'Programming Hub',
    ),
    CertificationsModel(
      title: 'Dart',
      link: '',
      skills:
          'Basic programming concepts, Synchronous & Asynchronous programming, Client side scripting,etc.  ',
      dateTime: DateTime(2024, 2),
      issuer: 'Programming Hub',
    ),
    CertificationsModel(
      title: 'Python',
      link: '',
      skills: '',
      dateTime: DateTime(2024, 6),
      issuer: 'Programming Hub',
    ),
    CertificationsModel(
      title: 'JavaScript',
      link: '',
      skills: 'JavaScript, Web Development.',
      dateTime: DateTime(2019, 11),
      issuer: 'Programming Hub',
    ),
  ];
  List<CertificationsModel> get menu => _menu;
}
