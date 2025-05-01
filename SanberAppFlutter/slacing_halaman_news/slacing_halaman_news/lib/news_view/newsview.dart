import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slacing_halaman_news/news_view/news_detailed_view/news_detailed_view.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  static final List<NewsItem> newsItems = [
    NewsItem(
      imagePath: 'assets/news_list/newsList1.png',
      title: 'Microsoft launches a deepfake detector tool ahead of US election',
      category: 'TECHNOLOGY',
      postedTime: '3 min ago',
    ),
    NewsItem(
      imagePath: 'assets/news_list/newsList2.jpg',
      title: 'Microsoft Open Again with something new',
      category: 'ECONOMY',
      postedTime: '1 hour ago',
    ),
  ];

  static final List<VerticalNewsItem> verticalNewsItems = [
    VerticalNewsItem(
      imagePath: 'assets/news_list/verticalNews1.jpg',
      title: 'Insurtech startup PasarPolis gets \$54 million — Series B',
      category: 'TECHNOLOGY',
    ),
    VerticalNewsItem(
      imagePath: 'assets/news_list/verticalNews2.jpg',
      title: 'The IPO parade continues as Wish files, Bumble targets',
      category: 'TECHNOLOGY',
    ),
    VerticalNewsItem(
      imagePath: 'assets/news_list/verticalNews3.png',
      title: 'Hypatos gets \$11.8M for a deep learning approach',
      category: 'TECHNOLOGY',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            topNavBar(),
            SizedBox(height: 32),
            topHorizontalListView(newsItems),
            SizedBox(height: 40),
            latestNews(),
            SizedBox(height: 23),
            listViewVertical(verticalNewsItems),
            // ListView vertical
          ],
        ),
      ),
    );
  }
}

Widget listViewVertical(List<VerticalNewsItem> verticalNewsItems) {
  return Expanded(
    child: ListView.builder(
      itemCount: verticalNewsItems.length, // jumlah data berita
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 24),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsDetailedView()),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    verticalNewsItems[index].imagePath,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 24), // Jarak horizontal antar elemen
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        verticalNewsItems[index].category,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: Color.fromRGBO(20, 30, 40, 0.48),
                        ),
                      ),
                      Text(
                        verticalNewsItems[index].title,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget latestNews() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32),
    child: Row(
      children: [
        Text(
          "Latest News",
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(17, 30, 41, 0.48),
          ),
        ),
        Spacer(),
        Image.asset('assets/icons/arrow.png', height: 16, width: 16),
      ],
    ),
  );
}

Widget topHorizontalListView(List<NewsItem> newsItems) {
  return SizedBox(
    height: 311,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: newsItems.length, // list URL atau asset gambar
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 32),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                // Gambar
                Image.asset(
                  newsItems[index].imagePath,
                  width: 311,
                  height: 311,
                  fit: BoxFit.cover,
                ),
                // Gradien di atas dengan height 72
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 72,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(
                            20,
                            30,
                            40,
                            0,
                          ), // Warna gradien pertama
                          Color.fromARGB(20, 30, 40, 1), // Warna gradien kedua
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
                // Gradien di bawah dengan height 156
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 156,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(
                            20,
                            30,
                            40,
                            0,
                          ), // Warna gradien pertama
                          Color.fromARGB(20, 30, 40, 1), // Warna gradien kedua
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 14,
                      left: 24,
                      right: 14,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 273,
                          height: 263,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Kategori dan waktu
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      newsItems[index].category,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    newsItems[index].postedTime,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              SizedBox(height: 131),
                              Spacer(), // Jarak untuk memberi ruang pada judul
                              Align(
                                alignment:
                                    Alignment.bottomLeft, // Align ke bawah kiri
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => NewsDetailedView(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    newsItems[index].title,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                              Spacer(), // Jarak antar elemen
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/comment.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  const SizedBox(width: 12),
                                  Image.asset(
                                    'assets/icons/bookmark.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'assets/icons/share.png',
                                    width: 24,
                                    height: 24,
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
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget topNavBar() {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
    child: Row(
      children: [
        circularMenuIcon(),
        Expanded(
          child: Center(
            child: Text(
              "NewsApp",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget circularMenuIcon() {
  return Container(
    width: 40,
    height: 40,
    decoration: const BoxDecoration(
      color: Color(0xFF141E28),
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(width: 16, height: 2, color: Colors.white),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.only(right: 5),
            child: Container(width: 10, height: 2, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

class NewsItem {
  final String imagePath;
  final String title;
  final String category;
  final String postedTime;

  NewsItem({
    required this.imagePath,
    required this.title,
    required this.category,
    required this.postedTime,
  });
}

class VerticalNewsItem {
  final String imagePath;
  final String title;
  final String category;

  VerticalNewsItem({
    required this.imagePath,
    required this.title,
    required this.category,
  });
}
