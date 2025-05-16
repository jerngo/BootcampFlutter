import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class CustomNavbar extends StatelessWidget {
  final int currentIndex;

  const CustomNavbar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF5AAD5D),
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            Get.toNamed(AppRoutesName.pageHome);
            break;
          case 1:
            Get.toNamed(AppRoutesName.pageRiwayat);
            break;
          case 2:
            Get.toNamed(AppRoutesName.pageProfil);
            break;
          case 3:
            Get.toNamed(AppRoutesName.pageSetting);
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Riwayat'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Pengaturan',
        ),
      ],
    );
  }
}
