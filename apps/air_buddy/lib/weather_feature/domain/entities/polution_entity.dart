class Polution{
  double avgUvi;
  double avgO3;
  double avgPm10;
  double avgPm25;
  int? aqi;
  DateTime date;
  String city;


  Polution({
    required this.avgUvi,
    required this.avgO3,
    required this.avgPm10,
    required this.avgPm25,
    this.aqi,
    required this.date,
    required this.city,
  });
}