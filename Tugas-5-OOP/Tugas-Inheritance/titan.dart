class Titan {
  late double _powerPoint;

  void setPowerPoint(double value) {
    _powerPoint = value < 5 ? 5 : value; // Validasi: kalau <5 jadi 5
  }

  double getPowerPoint() => _powerPoint;
}