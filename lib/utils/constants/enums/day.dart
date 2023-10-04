enum Day {
  mon("월"),
  tue("화"),
  wed("수"),
  thu("목"),
  fri("금"),
  sat("토"),
  sun("일");

  final String dayName;
  const Day(String dayname) : dayName = dayname;

  String getDayName() {
    return dayName;
  }
}
