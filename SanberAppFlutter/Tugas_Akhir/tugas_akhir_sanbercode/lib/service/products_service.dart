import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas_akhir_sanbercode/model/product_model.dart';

class ProductService {
  static Future<List<ProductApotik>> fetchProducts() async {
    final url = Uri.parse(
      'https://my.api.mockaroo.com/data_apotik?key=fd25d540',
    );

    try {
      final response = await http.get(url, headers: {'X-API-Key': 'fd25d540'});

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = json.decode(response.body);

        return jsonResponse
            .map((item) => ProductApotik.fromJson(item))
            .toList();
      } else {
        throw Exception(
          'Gagal mengambil data produk (Status ${response.statusCode})',
        );
      }
    } catch (e) {
      throw Exception('Terjadi kesalahan saat mengambil data produk: $e');
    }
  }

  static Future<ProductApotik> fetchSingleProduct(int productId) async {
    final url = Uri.parse(
      'https://my.api.mockaroo.com/data_apotik/${productId}?key=fd25d540',
    );

    try {
      final response = await http.get(url, headers: {'X-API-Key': 'fd25d540'});

      if (response.statusCode == 200) {
        // response.body diasumsikan berupa objek JSON, bukan list
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        return ProductApotik.fromJson(jsonResponse);
      } else {
        throw Exception(
          'Gagal mengambil data produk (Status ${response.statusCode})',
        );
      }
    } catch (e) {
      throw Exception('Terjadi kesalahan saat mengambil data produk: $e');
    }
  }
}
