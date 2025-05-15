// Register Page
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Password dan konfirmasi tidak cocok')),
        );
        return;
      }
      // Mock register success
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Pendaftaran berhasil. Silakan login.')),
      );
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 53,
                  color: Color(0xFF5AAD5D),
                ),
                Positioned(
                  left: 16, // atur posisi horizontal teks
                  top: 12, // atur posisi vertikal teks
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      "Daftar Baru",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomTextFormField(label: 'Email'),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomTextFormField(label: 'Password'),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomTextFormField(label: '`Konfirmasi Password'),
            ),
            SizedBox(height: 33),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5AAD5D),
                  minimumSize: Size(354, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Mendaftar",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 38),
            Row(
              children: [
                Expanded(child: Divider(color: Color(0xffC0C0C0), height: 3)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Atau daftar menggunakan',
                    style: TextStyle(color: Color(0xffC0C0C0)),
                  ),
                ),
                Expanded(child: Divider(color: Color(0xffC0C0C0), height: 3)),
              ],
            ),
            SizedBox(height: 32),
            Material(
              color: Colors.white,
              child: SizedBox(
                height: 52,
                width: 354,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/google.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Google',
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sudah punya akun? '),
                GestureDetector(
                  onTap: () {
                    // aksi disini
                  },
                  child: Text(
                    ' Login di sini',
                    style: TextStyle(
                      color: Color(0xFF5AAD5D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            GestureDetector(
              onTap: () {
                // aksi disini
              },
              child: Text(
                "Kembali ke Awal",
                style: TextStyle(fontSize: 15, color: Color(0xFF5D5D5D)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    //required this.controller,
  });

  final String label;
  //final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: TextFormField(
        //controller: controller,
        decoration: InputDecoration(
          label: Text(label, style: TextStyle(color: Color(0xffC0C0C0))),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC0C0C0)),
          ),
        ),
      ),
    );
  }
}
