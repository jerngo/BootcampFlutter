import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetailedView extends StatelessWidget {
  const NewsDetailedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topImage(context),
              SizedBox(height: 32),
              profilePic(),
              SizedBox(height: 32),
              titleArea(),
              SizedBox(height: 25),
              //Garis Pemisah
              Container(
                width: 311,
                height: 2,
                color: Color.fromRGBO(20, 30, 40, 0.48),
              ),
              SizedBox(height: 32),
              newsText(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget newsText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32),
    child: SizedBox(
      child: Text(
        "In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of “leading” ethics at their companies.",
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF141E28),
        ),
      ),
    ),
  );
}

Widget titleArea() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32),
    child: SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "TECHNOLOGY",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Color.fromRGBO(20, 30, 40, 0.48),
            ),
          ),
          SizedBox(height: 9),
          Text(
            "To build responsibly, tech needs to do more than just hire chief ethics officers",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Color(0xFF141E28),
            ),
            maxLines: 3,
            overflow: TextOverflow.clip,
          ),
          SizedBox(height: 16),
          Text(
            "17 June, 2023 — 4:49 PM",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(20, 30, 40, 0.48),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget profilePic() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32),
    child: SizedBox(
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              "assets/news_list/Detailed_View_Profile_Pic.jpg",
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Text(
            "Samuel Newton",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF141E28),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget topImage(BuildContext context) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
        child: Image.asset(
          "assets/news_list/Detailed_View_Image.jpg",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 375,
        ),
      ),
      topNavBar(context),
    ],
  );
}

Widget topNavBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("assets/icons/Back_Icon.png"),
        ),
        Spacer(),
      ],
    ),
  );
}
