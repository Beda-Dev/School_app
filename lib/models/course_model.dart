

class Course {
  final int day;
  final String month;
  final String subject;
  final String weekDay;
  final String time;
  final bool showButton;

  Course({
    required this.day,
    required this.month,
    required this.subject,
    required this.weekDay,
    required this.time,
    this.showButton = false,
  });
}
