import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas_akhir_sanbercode/model/promo_banner_model.dart';

class PromoBannerService {
  static Future<List<PromoBanner>> fetchProducts() async {
    final url = Uri.parse(
      'https://my.api.mockaroo.com/banner_promo?key=17bcf370',
    );

    try {
      final response = await http.get(url, headers: {'X-API-Key': '17bcf370'});

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = json.decode(response.body);

        return jsonResponse.map((item) => PromoBanner.fromJson(item)).toList();
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
