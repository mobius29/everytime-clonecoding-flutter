enum Day {
  mon("월", 0),
  tue("화", 1),
  wed("수", 2),
  thu("목", 3),
  fri("금", 4),
  sat("토", 5),
  sun("일", 6);

  final String dayName;
  final int num;
  const Day(this.dayName, this.num);

  String getDayName() => dayName;
  int getDayNum() => num;
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
