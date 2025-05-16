import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:tugas_akhir_sanbercode/pages/components/custom_navbar.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // agar teks rata kiri tetap konsisten
            children: [
              Stack(
                children: [
                  Container(
                    height: 53,
                    width: double.infinity,
                    color: Color(0xFF5AAD5D),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 11),
                        child: Row(
                          children: [
                            Text(
                              "Riwayat",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 33),
              Center(
                child: Image.asset(
                  "assets/icons/Gambar_Riwayat_Kosong.png",
                  height: 166,
                  width: 166,
                ),
              ),
              SizedBox(height: 12),
              Center(
                child: Text(
                  "Belum Ada Pesanan untuk Profil Ini",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C2C2C),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "Silahkan beli produk untuk menambah riwayatmu",
                  style: TextStyle(fontSize: 12, color: Color(0xFF5D5D5D)),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutesName.pageListItem);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5AAD5D),
                    minimumSize: Size(354, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Pergi Belanja",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavbar(currentIndex: 1),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;

  const MenuTile({
    Key? key,
    required this.title,
    required this.description,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Tidak perlu melakukan apa-apa saat ditekan
      },
      borderRadius: BorderRadius.circular(8),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Color.fromRGBO(20, 30, 40, 0.08),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: Image.asset(iconPath, height: 20, width: 20)),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF141E28),
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(20, 30, 40, 0.48),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/icons/arrow-forward-circle-outline.png",
            height: 16,
            width: 16,
          ),
        ],
      ),
    );
  }
}
