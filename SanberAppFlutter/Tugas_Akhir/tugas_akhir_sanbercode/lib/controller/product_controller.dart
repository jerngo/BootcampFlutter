import 'package:get/get.dart';
import 'package:tugas_akhir_sanbercode/model/product_model.dart';
import 'package:tugas_akhir_sanbercode/model/promo_banner_model.dart';
import 'package:tugas_akhir_sanbercode/service/products_service.dart';
import 'package:tugas_akhir_sanbercode/service/promo_banner_service.dart';

class ProductController extends GetxController {
  var products = <ProductApotik>[].obs;
  var promoProducts = <ProductApotik>[].obs;
  var bannerPromo = <PromoBanner>[].obs;
  var isLoading = true.obs;

  var choosenProduct = Rxn<ProductApotik>();

  @override
  void onReady() {
    super.onReady();
    fetchProductList();
    fetchBannerPromo();
  }

  void fetchProductList() async {
    try {
      isLoading(true);
      final result = await ProductService.fetchProducts();
      products.assignAll(result);
    } catch (e) {
      Get.snackbar('Error', 'Gagal mengambil data');
    } finally {
      isLoading(false);
    }
  }

  void fetchPromoProducts() async {
    try {
      isLoading(true);
      var allProducts = await ProductService.fetchProducts();
      products.assignAll(allProducts);
      promoProducts.assignAll(allProducts.where((p) => p.isPromo).toList());
    } finally {
      isLoading(false);
    }
  }

  void fetchBannerPromo() async {
    try {
      isLoading(true);
      final result = await PromoBannerService.fetchProducts();
      bannerPromo.assignAll(result);
    } catch (e) {
      Get.snackbar('Error', 'Gagal mengambil data');
    } finally {
      isLoading(false);
    }
  }

  void fetchSingleProduct(int productId) async {
    try {
      isLoading(true);
      final result = await ProductService.fetchSingleProduct(productId);
      choosenProduct.value = result;
    } catch (e) {
      Get.snackbar('Error', 'Gagal mengambil data');
    } finally {
      isLoading(false);
    }
  }
}
