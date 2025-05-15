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

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

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
                        padding: const EdgeInsets.only(left: 24, top: 11),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                //aksi disini
                              },
                              child: Image.asset(
                                "assets/icons/Icon_Tombol_Back.png",
                                height: 24,
                                width: 24,
                              ),
                            ),
                            SizedBox(width: 11),
                            Text(
                              "Daftar Produk",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // agar tidak konflik dengan scroll utama
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 13,
                    childAspectRatio: 147 / 250,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    //final product = sampleProducts[index];
                    return Container(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SizedBox(
                                width: 112,
                                height: 112,
                                child: Image.network(
                                  "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/2/10/bf871614-4acd-4b1a-bd38-59187e215cef.jpg",

                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF5AAD5D),
                                  minimumSize: Size(137, 17),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
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
                          ],
                        ),
                      ),
                    );
                  },
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
}
