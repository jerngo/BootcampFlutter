import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .start, // agar teks rata kiri tetap konsisten
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/menu-icon.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/search-icon.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontFamily: "Telegraf",
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF141E28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: MenuTile(
                    title: "Profile settings",
                    description: "Settings regarding your profile",
                    iconPath: "assets/person-outline.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: MenuTile(
                    title: "News settings",
                    description: "Choose your favourite topics",
                    iconPath: "assets/newspaper-outline.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: MenuTile(
                    title: "Notifications",
                    description: "when would you like to be notified",
                    iconPath: "assets/notifications-outline.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: MenuTile(
                    title: "Subscriptions",
                    description: "Currently, you are in Starter Plan",
                    iconPath: "assets/folder-open-outline.png",
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Other",
                  style: TextStyle(
                    fontFamily: "Telegraf",
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF141E28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: MenuTile(
                    title: "Bug report",
                    description: "Report bugs very easy",
                    iconPath: "assets/bug-outline.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 32),
                  child: MenuTile(
                    title: "Share the app",
                    description: "Share on social media networks",
                    iconPath: "assets/share-social-outline.png",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
                    fontFamily: "Telegraf",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF141E28),
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontFamily: "Telegraf",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(20, 30, 40, 0.48),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/arrow-forward-circle-outline.png",
            height: 16,
            width: 16,
          ),
        ],
      ),
    );
  }
}
