Future<void> line() async {
  print('pernahkan kau merasa');
}

Future<void> line2() async {
  print('pernahkan kau merasa ...........');
}

Future<void> line3() async {
  print('pernahkan kau merasa');
}

Future<void> line4() async {
  print('Hatimu hampa, pernahkan kau merasa, hati mu kosong ............');
}

Future<void> main(List<String> args) async {
  print("Ready. sing");
  
  await Future.delayed(Duration(seconds: 5));
  await line();

  await Future.delayed(Duration(seconds: 3));
  await line2();

  await Future.delayed(Duration(seconds: 2));
  await line3();

  await Future.delayed(Duration(seconds: 1));
  await line4();
}