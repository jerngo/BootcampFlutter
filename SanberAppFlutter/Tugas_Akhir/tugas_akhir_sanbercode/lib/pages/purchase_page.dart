// Pembelian Page
import 'package:flutter/material.dart';
import 'package:tugas_akhir_sanbercode/pages/home_page.dart';

class PembelianPage extends StatefulWidget {
  const PembelianPage({super.key});

  @override
  _PembelianPageState createState() => _PembelianPageState();
}

class _PembelianPageState extends State<PembelianPage> {
  final _formKey = GlobalKey<FormState>();
  late Product product;
  String buyerName = '';
  String address = '';
  String phone = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    product = ModalRoute.of(context)!.settings.arguments as Product;
  }

  void _confirmPurchase() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Show success dialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Pembelian Berhasil'),
            content: Text(
              'Terima kasih $buyerName.\nPesanan untuk ${product.name} seharga Rp ${product.price.toStringAsFixed(0)} telah kami terima dan akan dikirim ke:\n$address\nNo. Telepon: $phone',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pembelian')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Produk yang dibeli:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.green.shade700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '${product.name} - Rp ${product.price.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 16),
            ),
            Divider(height: 32, thickness: 1.5),
            Expanded(
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nama Pembeli',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return 'Masukkan nama pembeli';
                        }
                        return null;
                      },
                      onSaved: (val) {
                        buyerName = val!.trim();
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Alamat Pengiriman',
                        prefixIcon: Icon(Icons.home),
                      ),
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return 'Masukkan alamat pengiriman';
                        }
                        return null;
                      },
                      onSaved: (val) {
                        address = val!.trim();
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'No. Telepon',
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        if (val == null ||
                            val.trim().isEmpty ||
                            val.trim().length < 9) {
                          return 'Masukkan nomor telepon valid';
                        }
                        return null;
                      },
                      onSaved: (val) {
                        phone = val!.trim();
                      },
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        onPressed: _confirmPurchase,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          'Konfirmasi Pembelian',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
