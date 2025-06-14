import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/route_manager.dart';
import 'package:tugas_akhir_sanbercode/pages/components/custom_navbar.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  String name = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      name = user.displayName ?? '';
      email = user.email ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(width: 11),
                            Text(
                              "Profil",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: GestureDetector(
                                onTap: () {
                                  Get.offAllNamed(AppRoutesName.pageGetStarter);
                                },
                                child: Image.asset(
                                  "assets/icons/Icon_Logout.png",
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "About Me",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C2C2C),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Image.asset(
                          "assets/icons/about_us_profile_image.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          name.isNotEmpty ? name : 'Loading...',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C2C2C),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          email.isNotEmpty ? email : '',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF2C2C2C),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Container(
                          height: 123,
                          width: 328,
                          color: Color(0xFFE9EAF8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 9,
                                  left: 23,
                                ),
                                child: Text(
                                  "Portofolio",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/flutter_image.png",
                                          height: 60,
                                          width: 60,
                                        ),
                                        Text(
                                          "Flutter",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5D5D5D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/laravel_image.png",
                                          height: 60,
                                          width: 60,
                                        ),
                                        Text(
                                          "Laravel",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5D5D5D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/unity_image.png",
                                          height: 60,
                                          width: 60,
                                        ),
                                        Text(
                                          "Unity",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5D5D5D),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Container(
                          height: 123,
                          width: 328,
                          color: Color(0xFFE9EAF8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 9,
                                  left: 23,
                                ),
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/linkedin_image.png",
                                          height: 60,
                                          width: 60,
                                        ),
                                        Text(
                                          "LinkedIn",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5D5D5D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/telegram_image.png",
                                          height: 60,
                                          width: 60,
                                        ),
                                        Text(
                                          "Telegram",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5D5D5D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/gmail_image.png",
                                          height: 60,
                                          width: 60,
                                        ),
                                        Text(
                                          "Gmail",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5D5D5D),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            height: 123,
                            width: 328,
                            color: Color(0xFFE9EAF8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 9,
                                    left: 23,
                                  ),
                                  child: Text(
                                    "Course",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/icons/sanbercode_image.png",
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/icons/udemy_image.png",
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavbar(currentIndex: 2),
    );
  }
}
