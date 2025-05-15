// Detail Page
import 'package:flutter/material.dart';
import 'package:tugas_akhir_sanbercode/pages/home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

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
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 219,
                child: Image.network(
                  "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/2/10/bf871614-4acd-4b1a-bd38-59187e215cef.jpg",
                  fit: BoxFit.contain, // menyesuaikan gambar dengan ukuran box
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Color(0xFFD2D2D2),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 12, right: 12),
                child: SizedBox(
                  width: 351,
                  height: 48,
                  child: Text(
                    "Mefinal 500mg\n10 Tablet",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
                child: SizedBox(
                  width: 351,
                  height: 14,
                  child: Text(
                    "Per Strip",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 5,
                color: Color(0xFFD2D2D2),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 12, right: 12),
                child: SizedBox(
                  width: 351,
                  height: 19,
                  child: Text(
                    "Harga",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
                child: SizedBox(
                  width: 351,
                  height: 14,
                  child: Text(
                    "Rp30.000",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 5,
                color: Color(0xFFD2D2D2),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 12, right: 12),
                child: SizedBox(
                  width: 351,
                  height: 19,
                  child: Text(
                    "Detail Produk",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
                child: SizedBox(
                  width: 351,
                  child: Text(
                    "Nexium Mups 40 Mg 7 Tablet bermanfaat untuk mengobati penyakit asam lambung atau gastroesophageal reflux disease (GERD). \n Selain itu, Nexium Mups 40 Mg 7 Tablet juga dapat digunakan untuk mengobati sindrom Zollinger-Ellison, esofagitis erosif, atau tukak lambung. Nexium Mups 40 Mg 7 Tablet bekerja dengan cara menurunkan produksi asam lambung. Untuk mengatasi tukak lambung akibat infeksi Helicobacter pylori, obat ini bisa dikombinasikan dengan amoxicilin dan clarithromycin. GolonganObat resep Kategori Obat sakit perut, obat maag Komposisi Esomeprazole 40 mg Dikonsumsi oleh Dewasa dan anak-anak usia 12 tahun ke atas",

                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Color(0xFFD2D2D2),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 11,
                  bottom: 16,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5AAD5D),
                    minimumSize: Size(354, 52),
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
      ),
    );
  }
}
