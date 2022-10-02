class Appointment {
  final String id;
  final String title;
  final String doctorName;
  final DateTime date;

  Appointment(
      {required this.id,
      required this.title,
      required this.doctorName,
      required this.date});
}
