//soal 1
import 'dart:math';

class Lingkaran {
  double jariJari;

  Lingkaran(this.jariJari);

  double hitungLuas() {
    return pi * jariJari * jariJari;
  }
}

void main() {
  var lingkaran = Lingkaran(7.0);
  print('Luas lingkaran: ${lingkaran.hitungLuas()}');
}