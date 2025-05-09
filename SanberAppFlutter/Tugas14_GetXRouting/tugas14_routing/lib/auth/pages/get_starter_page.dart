import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarterPage extends StatelessWidget {
  const GetStarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 86),
                width: double.infinity,
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image_news.png"),
                  ),
                ),
              ),
              SizedBox(height: 37),
              Text(
                'Yuk, Membaca Bersama\nSanber News',
                style: GoogleFonts.arimo(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 21),
              Text(
                'Berita Terpercaya, Di Ujung Jari Anda',
                style: TextStyle(fontSize: 15),
              ),
              Spacer(),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3498DE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.only(bottom: 34),
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Color(0xff3498DE)),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Mendaftar',
                      style: GoogleFonts.arimo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3498DE),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
