// Get Started Page
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFF5AAD5D),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          color: Color(0xFF5AAD5D),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 32,
                                  top: 242,
                                ),
                                child: Text(
                                  "Selamat Datang",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    wordSpacing: 1.2,
                                  ),
                                ),
                              ),
                              SizedBox(height: 14),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 36,
                                  right: 32,
                                ),
                                child: Text(
                                  "Marketplace apotek terpercaya, belanja obat dan produk kesehatan dengan mudah di sini.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    wordSpacing: 0.3,
                                  ),
                                ),
                              ),
                              SizedBox(height: 66),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoutesName.pageLogin);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(224, 62),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "Mulai",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF5AAD5D),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sudah punya akun? ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed(AppRoutesName.pageLogin);
                                      },
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " | ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed(AppRoutesName.pageRegister);
                                      },
                                      child: Text(
                                        "Daftar",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
