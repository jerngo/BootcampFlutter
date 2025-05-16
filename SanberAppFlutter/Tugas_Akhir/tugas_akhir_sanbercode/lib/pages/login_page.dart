import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Login berhasil')));

        Get.offAllNamed(
          AppRoutesName.pageHome,
        ); // Pastikan route '/home' sudah terdaftar
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Login gagal: ${e.message}')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
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
                      left: 16,
                      top: 12,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Masuk",
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
                  child: CustomTextFormField(
                    label: 'Email',
                    controller: emailController,
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomTextFormField(
                    label: 'Password',
                    controller: passwordController,
                    isPassword: true,
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(left: 246),
                  child: Text("Lupa password?", style: TextStyle(fontSize: 15)),
                ),
                SizedBox(height: 33),
                Center(
                  child: ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5AAD5D),
                      minimumSize: Size(354, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Masuk",
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
                    Expanded(
                      child: Divider(color: Color(0xffC0C0C0), height: 3),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Atau masuk menggunakan',
                        style: TextStyle(color: Color(0xffC0C0C0)),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Color(0xffC0C0C0), height: 3),
                    ),
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
                    Text('Belum punya akun? '),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutesName.pageRegister);
                      },
                      child: Text(
                        ' Daftar di sini',
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
                    Get.toNamed(AppRoutesName.pageGetStarter);
                  },
                  child: Text(
                    "Kembali ke Awal",
                    style: TextStyle(fontSize: 15, color: Color(0xFF5D5D5D)),
                  ),
                ),
              ],
            ),
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
    this.isPassword = false,
  });

  final String label;
  final TextEditingController controller;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator:
          (value) =>
              value == null || value.isEmpty
                  ? '$label tidak boleh kosong'
                  : null,
      decoration: InputDecoration(
        label: Text(label, style: TextStyle(color: Color(0xffC0C0C0))),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffC0C0C0)),
        ),
      ),
    );
  }
}
