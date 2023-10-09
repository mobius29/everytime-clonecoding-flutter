enum Day {
  mon("월"),
  tue("화"),
  wed("수"),
  thu("목"),
  fri("금"),
  sat("토"),
  sun("일");

  final String dayName;
  const Day(this.dayName);

  String getDayName() => dayName;
}

enum Semester {
  spring(semester: "1"),
  summer(semester: "여름"),
  autumn(semester: "2"),
  winter(semester: "겨울");

  final String semester;
  const Semester({
    required this.semester,
  });
}
