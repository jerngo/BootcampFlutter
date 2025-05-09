import 'package:get/get_navigation/get_navigation.dart';
import 'package:tugas14_routing/auth/pages/get_starter_page.dart';
import 'package:tugas14_routing/login_page.dart';
import 'package:tugas14_routing/news_view/news_detailed_view/news_detailed_view.dart';
import 'package:tugas14_routing/news_view/newsview.dart';
import 'package:tugas14_routing/register_page.dart';
import 'package:tugas14_routing/routes/app_routes_name.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesName.pageGetStarter, page: () => GetStarterPage()),
    GetPage(name: AppRoutesName.pageLogin, page: () => LoginPage()),
    GetPage(name: AppRoutesName.pageRegister, page: () => RegisterPage()),
    GetPage(name: AppRoutesName.pageHomeNews, page: () => NewsView()),
    GetPage(
      name: AppRoutesName.pageDetailedNews,
      page: () => NewsDetailedView(),
    ),
  ];
}
