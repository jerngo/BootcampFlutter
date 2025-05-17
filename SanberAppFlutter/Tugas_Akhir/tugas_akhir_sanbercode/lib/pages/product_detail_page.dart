import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir_sanbercode/controller/product_controller.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final ProductController controller = Get.find();
  int? productId;

  @override
  void initState() {
    super.initState();
    productId = int.tryParse(Get.parameters['id'] ?? '');
    if (productId != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.fetchSingleProduct(productId!);
      });
    }
  }

  @override
  void dispose() {
    controller.choosenProduct.value = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
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
                      color: const Color(0xFF5AAD5D),
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
                          const SizedBox(width: 11),
                          const Text(
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
                const Divider(color: Color(0xFFD2D2D2)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    product.unittype,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),
                const Divider(color: Color(0xFFD2D2D2)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    "Harga",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Rp ${product.price}",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),
                const Divider(color: Color(0xFFD2D2D2)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    "Detail Produk",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    product.description,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D5D),
                    ),
                  ),
                ),
                const Divider(color: Color(0xFFD2D2D2)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              title: const Text('Pembelian Berhasil'),
                              content: Text(
                                'Produk "${product.name}" berhasil dibeli!',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5AAD5D),
                      minimumSize: const Size(double.infinity, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
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
