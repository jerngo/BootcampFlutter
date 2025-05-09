import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas14_routing/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 352,
                  height: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/login.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomTextFormField(
                label: 'Masukkan Email',
                controller: emailController,
              ),
              CustomTextFormField(
                label: "Password",
                controller: passwordController,
              ),
              CustomTextFormField(
                label: "Konfirmasi Password",
                controller: confirmPasswordController,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Color(0xffF3498DB),
                  ),
                  onPressed: () async {
                    print('Tombol Mendaftar ditekan');
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();
                    final confirmPassword =
                        confirmPasswordController.text.trim();

                    if (password != confirmPassword) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Password tidak cocok")),
                      );
                      return;
                    }

                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                          );

                      // Kosongkan input
                      emailController.clear();
                      passwordController.clear();
                      confirmPasswordController.clear();

                      // Tampilkan popup berhasil
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text("Berhasil"),
                              content: Text("Akun berhasil didaftarkan!"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // tutup dialog
                                    // Navigasi ke halaman login misalnya:
                                    // Navigator.pushReplacementNamed(context, '/login');
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            ),
                      );
                    } catch (e) {
                      debugPrint('Firebase Auth Error: $e');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Terjadi kesalahan: ${e.toString()}"),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Mendaftar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // bagian bawah tidak diubah
              SizedBox(height: 40),
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
              SizedBox(height: 40),
              Material(
                color: Colors.white,
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.red),
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
                              image: AssetImage('assets/image/google.png'),
                            ),
                          ),
                        ),
                        Text('Mendaftar', style: TextStyle(color: Colors.red)),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun? silahkan'),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      ); // Ganti '/login' dengan route login kamu
                    },
                    child: Text(
                      ' masuk.',
                      style: TextStyle(
                        color: Color(0xffF3498DB),
                        decoration:
                            TextDecoration
                                .underline, // opsional: beri garis bawah
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: controller,
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
