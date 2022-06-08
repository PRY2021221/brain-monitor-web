abstract class CustomDate {
  CustomDate();

  static String dateFormatter(DateTime date) {
    final day = date.day < 10 ? "${date.day}" : "0${date.day}";
    final month = date.month < 10 ? "${date.month}" : "0${date.month}";
    final year = "${date.year}";
    final seconds = date.second < 10 ? "${date.second}" : "0${date.second}";
    final minute = date.minute < 10 ? "${date.minute}" : "0${date.minute}";
    final hour = date.hour < 10 ? "${date.hour}" : "0${date.hour}";
    return "$day-$month-$year  $hour:$minute:$seconds";
  }
}
