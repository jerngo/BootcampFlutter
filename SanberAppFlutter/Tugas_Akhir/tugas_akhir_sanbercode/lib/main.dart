import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tugas_akhir_sanbercode/pages/about_us_page.dart';
import 'package:tugas_akhir_sanbercode/pages/getstarted_page.dart';
import 'package:tugas_akhir_sanbercode/pages/history_page.dart';
import 'package:tugas_akhir_sanbercode/pages/home_page.dart';
import 'package:tugas_akhir_sanbercode/pages/item_list_page.dart';
import 'package:tugas_akhir_sanbercode/pages/login_page.dart';
import 'package:tugas_akhir_sanbercode/pages/product_detail_page.dart';
import 'package:tugas_akhir_sanbercode/pages/purchase_page.dart';
import 'package:tugas_akhir_sanbercode/pages/register_page.dart';
import 'package:tugas_akhir_sanbercode/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Apotek Marketplace',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HistoryPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailPage(),
        '/pembelian': (context) => PembelianPage(),
        '/about': (context) => AboutUsPage(),
      },
    );
  }
}
