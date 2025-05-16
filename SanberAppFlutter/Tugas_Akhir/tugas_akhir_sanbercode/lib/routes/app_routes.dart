import 'package:get/get_navigation/get_navigation.dart';
import 'package:tugas_akhir_sanbercode/bindings/product_binding.dart';
import 'package:tugas_akhir_sanbercode/pages/about_us_page.dart';
import 'package:tugas_akhir_sanbercode/pages/getstarted_page.dart';
import 'package:tugas_akhir_sanbercode/pages/history_page.dart';
import 'package:tugas_akhir_sanbercode/pages/home_page.dart';
import 'package:tugas_akhir_sanbercode/pages/item_list_page.dart';
import 'package:tugas_akhir_sanbercode/pages/login_page.dart';
import 'package:tugas_akhir_sanbercode/pages/product_detail_page.dart';
import 'package:tugas_akhir_sanbercode/pages/register_page.dart';
import 'package:tugas_akhir_sanbercode/pages/settings_page.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: AppRoutesName.pageGetStarter,
      page: () => GetStartedPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutesName.pageRegister,
      page: () => RegisterPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutesName.pageLogin,
      page: () => LoginPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutesName.pageHome,
      page: () => HomeScreen(),
      transition: Transition.noTransition,
      binding: ProductBinding(),
    ),
    GetPage(
      name: AppRoutesName.pageListItem,
      page: () => ItemListPage(),
      transition: Transition.noTransition,
      binding: ProductBinding(),
    ),
    GetPage(
      name: AppRoutesName.pageDetailedItem,
      page: () => DetailPage(),
      transition: Transition.cupertino,
      binding: ProductBinding(),
    ),
    GetPage(
      name: AppRoutesName.pageProfil,
      page: () => AboutUsPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutesName.pageRiwayat,
      page: () => HistoryPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutesName.pageSetting,
      page: () => SettingsPage(),
      transition: Transition.noTransition,
    ),
  ];
}
