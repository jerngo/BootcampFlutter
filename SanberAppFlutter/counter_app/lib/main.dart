import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Page')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            Text('Nilai Counter : $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

// ANALISIS TERHADAP SETSTATE
// APA KEGUNAAN

// SETSTATE adalah fungsi yang dipanggil untuk meng-refresh tampilar flutter,
// jadi saat ada perubahan pada data maka di app yang kita buat akan berubah juga karena telah di refresh,
// bisa juga kita memasukkan fungsinya kedalam bracket SETSTATE-nya agar perubahan dan refresh tampilan terjadi bersamaan
// tanpa SETSTATE flutter tidak akan tau kapan app harus di refresh dan kapan data diperbaharui.
