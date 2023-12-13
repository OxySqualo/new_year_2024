import 'package:new_year_2024/screen/count_screen.dart';

getDayName(lastDigit) {
  String dayName = 'дней';
  if (lastDigit == 1 && difference != 11) {
    return dayName = 'день';
  } else if (lastDigit == 2 && difference != 12) {
    return dayName = 'дня';
  } else if (lastDigit == 3 && difference != 13) {
    return dayName = 'дня';
  } else if (lastDigit == 4 && difference != 14) {
    return dayName = 'дня';
  } else {
    return dayName;
  }
}

getLeftDay(lastDigit) {
  String leftDay = 'осталось';
  if (lastDigit == 1 && difference != 11) {
    return leftDay = 'остался';
  } else {
    return leftDay;
  }
}

getLastDigit() {
  String dayString = difference.toString();
  List<String> mylist = dayString.split('');
  int lastDigit = int.parse(mylist.last);
  return lastDigit;
}
