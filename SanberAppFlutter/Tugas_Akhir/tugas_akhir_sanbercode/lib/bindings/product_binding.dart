import 'package:get/get.dart';
import 'package:tugas_akhir_sanbercode/controller/product_controller.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
  }
}
