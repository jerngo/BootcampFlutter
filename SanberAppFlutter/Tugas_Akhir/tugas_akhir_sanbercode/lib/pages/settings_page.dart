import 'package:flutter/material.dart';
import 'package:tugas_akhir_sanbercode/pages/components/custom_navbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                              "Pengaturan",
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
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    MenuTile(
                      title: "Pengaturan Profil",
                      description: "Atur profil anda disini",
                      iconPath: "assets/icons/person-outline.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: MenuTile(
                        title: "Pengaturan Riwayat",
                        description: "Atur riwayat anda disini",
                        iconPath: "assets/icons/newspaper-outline.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: MenuTile(
                        title: "Pengaturan Notifikasi",
                        description: "Atur notifikasi anda disini",
                        iconPath: "assets/icons/notifications-outline.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: MenuTile(
                        title: "Lapor Kesalahan",
                        description: "Kirimkan laporan kesalahan",
                        iconPath: "assets/icons/bug-outline.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 32),
                      child: MenuTile(
                        title: "Bagikan Aplikasi",
                        description: "Bagikan aplikasi ini ke sosial media",
                        iconPath: "assets/icons/share-social-outline.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavbar(currentIndex: 3),
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
