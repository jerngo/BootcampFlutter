// Detail Page
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:tugas_akhir_sanbercode/controller/product_controller.dart';
import 'package:tugas_akhir_sanbercode/pages/home_page.dart';

class DetailPage extends StatelessWidget {
  final ProductController controller = Get.find();

  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = int.tryParse(Get.parameters['id'] ?? '');

    // Pastikan data diambil jika belum sesuai
    if (productId != null &&
        (controller.choosenProduct.value == null ||
            controller.choosenProduct.value!.id != productId)) {
      controller.fetchSingleProduct(productId);
    }

    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        final product = controller.choosenProduct.value;
        if (product == null) {
          return Center(child: Text('Produk tidak ditemukan ID : $productId'));
        }

        return SingleChildScrollView(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 11),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Image.asset(
                              "assets/icons/Icon_Tombol_Back.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                          SizedBox(width: 11),
                          Text(
                            "Detail Produk",
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

                SizedBox(
                  width: double.infinity,
                  height: 219,
                  child: Image.network(product.image, fit: BoxFit.contain),
                ),
                Divider(color: Color(0xFFD2D2D2)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Text(
                    product.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    product.unittype,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),

                Divider(color: Color(0xFFD2D2D2)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Text(
                    "Harga",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Rp ${product.price}",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),

                Divider(color: Color(0xFFD2D2D2)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Text(
                    "Detail Produk",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),

                Divider(color: Color(0xFFD2D2D2)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5AAD5D),
                      minimumSize: Size(double.infinity, 52),
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
      }),
    );
  }
}
