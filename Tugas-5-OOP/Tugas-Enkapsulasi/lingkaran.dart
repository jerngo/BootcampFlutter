//Tugas 2
import 'dart:math';

class Lingkaran {
  late double _ruas;

  void setRuas(double value) {
    _ruas = value < 0 ? value * -1 : value;
  }

  double getRuas() => _ruas;

  double hitungLuas() => pi * _ruas * _ruas;
}