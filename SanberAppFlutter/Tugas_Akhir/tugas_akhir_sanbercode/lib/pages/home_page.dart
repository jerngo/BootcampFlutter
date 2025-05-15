// Home Page
import 'package:flutter/material.dart';

// Sample product model
class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

// Sample products data
final List<Product> sampleProducts = [
  Product(
    id: 1,
    name: 'Paracetamol 500mg',
    description: 'Obat pereda nyeri dan penurun demam.',
    price: 12000,
    image:
        'https://images.unsplash.com/photo-1584036561566-baf8f5f1b144?auto=format&fit=crop&w=300&q=60',
  ),
  Product(
    id: 2,
    name: 'Minyak Kayu Putih',
    description: 'Untuk menghangatkan tubuh dan meredakan masuk angin.',
    price: 18000,
    image:
        'https://images.unsplash.com/photo-1584036561566-baf8f5f1b144?auto=format&fit=crop&w=300&q=60',
  ),
  Product(
    id: 3,
    name: 'Vitamin C',
    description: 'Meningkatkan daya tahan tubuh.',
    price: 25000,
    image:
        'https://images.unsplash.com/photo-1584036561566-baf8f5f1b144?auto=format&fit=crop&w=300&q=60',
  ),
  Product(
    id: 4,
    name: 'Masker Surgical',
    description: 'Masker wajah untuk perlindungan maksimal.',
    price: 40000,
    image:
        'https://images.unsplash.com/photo-1584036561566-baf8f5f1b144?auto=format&fit=crop&w=300&q=60',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: Color(0xFF5AAD5D),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24, top: 11),
                        child: Text(
                          "Produk Kesehatan",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26, // Warna bayangan
                                blurRadius: 6, // Seberapa blur bayangannya
                                offset: Offset(0, 3), // Posisi bayangan (x, y)
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cari obat atau produk...',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ), // warna abu-abu
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide.none, // hilangkan border default
                              ),
                              filled: true,
                              fillColor:
                                  Colors.white, // warna latar belakang input
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Belanja Sesuai Kategori",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 14),
              //Kategori
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildIconKategori(
                          "Obat & Perawatan",
                          "assets/icons/Icon_Obat_Perwatan.png",
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Weight Management",
                          "assets/icons/Icon_Weight_Management.png",
                        ),
                        SizedBox(width: 44),
                        buildIconKategori("Susu", "assets/icons/Icon_Susu.png"),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Asuransiku",
                          "assets/icons/Icon_Asuransiku.png",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildIconKategori(
                          "Ibu & Anak",
                          "assets/icons/Icon_Ibu_Anak.png",
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Vitamin & Suplemen",
                          "assets/icons/Icon_Vitamin_Suplemen.png",
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Kecantikan & Perawatan Diri",
                          "assets/icons/Icon_Kecantikan_Perawatan.png",
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Lihat Semua Kategori",
                          "assets/icons/Icon_Semua_Kategori.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Promo Menarik",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 156,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // julah banner
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        width: 276,
                        height: 156,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfKUSOjEPCtwlX7LoY6GLvsckDF8L8Od4yaQ&s",
                            ), // contoh asset lokal
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 47),
              Stack(
                children: [
                  Container(
                    height: 430,
                    width: double.infinity,
                    color: Color(0xFFE9EAF8),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Produk Pilihan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3A3E73),
                          ),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          height: 295,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Container(
                                  width: 147,
                                  height: 295,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            left: 18,
                                            right: 18,
                                          ),
                                          child: SizedBox(
                                            width: 112,
                                            height: 112,
                                            child: Image.network(
                                              "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/2/10/bf871614-4acd-4b1a-bd38-59187e215cef.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 137,
                                          height: 26,
                                          child: Text(
                                            "Mefinal 500mg\n10 Tablet",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        SizedBox(
                                          width: 137,
                                          height: 8,
                                          child: Text(
                                            "Per Strip",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 7,
                                              color: Color(0xFF5D5D5D),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          width: 137,
                                          height: 12,
                                          child: Text(
                                            "Rp30.000",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        //SizedBox(height: 20),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 5,
                                          ),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(
                                                0xFF5AAD5D,
                                              ),
                                              minimumSize: Size(137, 17),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Text(
                                              "Beli",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Tambahkan isi lainnya di sini
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 27),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                //aksi disini
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF5AAD5D),
                                    ),
                                  ),
                                  SizedBox(width: 7),
                                  Image.asset(
                                    "assets/icons/Icon_Lihat_Semua.png",
                                    height: 12,
                                    width: 12,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Unggah Resepmu",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(bottom: 33),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // aksi disini
                    },
                    child: Container(
                      width: 355,
                      height: 71,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // opsional biar lebih halus
                        color: Colors.white, // opsional, background putih
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Image.asset(
                              "assets/icons/Icon_Upload_Resep.png",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Punya Resep Obat?",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Unggah di sini, dan obat langsung diantar",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF5D5D5D),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                            "assets/icons/Icon_Arrow_Kanan.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Riwayat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
      ),
    );
  }

  Widget buildIconKategori(String categoryName, String imageLink) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          child: Image.asset(
            imageLink, // ganti dengan path file kamu
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 4),
        SizedBox(
          width: 53,
          height: 26,
          child: Text(
            categoryName,
            style: TextStyle(fontSize: 8),
            maxLines: 20,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center, // atau left/right sesuai kebutuhan
          ),
        ),
      ],
    );
  }
}
