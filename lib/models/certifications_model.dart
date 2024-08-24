class CertificationsModel {
  final String title;
  final String issuer;
  final DateTime dateTime;
  final String skills;
  final String link;

  CertificationsModel({
    required this.skills,
    required this.dateTime,
    required this.issuer,
    required this.title,
    required this.link,
  });
}
