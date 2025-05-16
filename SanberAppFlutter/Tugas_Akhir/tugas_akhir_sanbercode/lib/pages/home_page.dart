import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:tugas_akhir_sanbercode/controller/product_controller.dart';
import 'package:tugas_akhir_sanbercode/pages/components/custom_navbar.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductController controller = Get.find();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.fetchPromoProducts();
      controller.fetchBannerPromo();
    });
  }

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
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cari obat atau produk...',
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
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
                          AppRoutesName.pageListItem,
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Weight Management",
                          "assets/icons/Icon_Weight_Management.png",
                          AppRoutesName.pageListItem,
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Susu",
                          "assets/icons/Icon_Susu.png",
                          AppRoutesName.pageListItem,
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Asuransiku",
                          "assets/icons/Icon_Asuransiku.png",
                          AppRoutesName.pageListItem,
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
                          AppRoutesName.pageListItem,
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Vitamin & Suplemen",
                          "assets/icons/Icon_Vitamin_Suplemen.png",
                          AppRoutesName.pageListItem,
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Kecantikan & Perawatan Diri",
                          "assets/icons/Icon_Kecantikan_Perawatan.png",
                          AppRoutesName.pageListItem,
                        ),
                        SizedBox(width: 44),
                        buildIconKategori(
                          "Lihat Semua Kategori",
                          "assets/icons/Icon_Semua_Kategori.png",
                          AppRoutesName.pageListItem,
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
              Obx(
                () => SizedBox(
                  height: 156,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.bannerPromo.length,
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    itemBuilder: (context, index) {
                      final bannerPromo = controller.bannerPromo[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Container(
                          width: 276,
                          height: 156,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(bannerPromo.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
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
                        Obx(
                          () => SizedBox(
                            height: 295,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.promoProducts.length,
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              itemBuilder: (context, index) {
                                final product = controller.promoProducts[index];
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
                                                product.image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 137,
                                            height: 26,
                                            child: Text(
                                              product.name,
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
                                              product.unittype,
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
                                              "Rp ${product.price}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                            ),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Get.toNamed(
                                                  "${AppRoutesName.pageListItem}/${product.id}",
                                                );
                                              },
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
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 27),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutesName.pageListItem);
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
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
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
      bottomNavigationBar: CustomNavbar(currentIndex: 0),
    );
  }

  Widget buildIconKategori(
    String categoryName,
    String imageLink,
    String pageLink,
  ) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(pageLink);
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            child: Image.asset(
              imageLink,
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
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
