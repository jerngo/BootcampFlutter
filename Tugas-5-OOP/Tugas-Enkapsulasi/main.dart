import 'lingkaran.dart';

void main(List<String> args) {
  var lingkaran = Lingkaran();
  lingkaran.setRuas(-7.0);

  print('Jari-jari (ruas): ${lingkaran.getRuas()}');
  print('Luas lingkaran: ${lingkaran.hitungLuas()}');
}