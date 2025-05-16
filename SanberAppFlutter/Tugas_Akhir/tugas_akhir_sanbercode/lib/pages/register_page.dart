import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tugas_akhir_sanbercode/routes/app_routes_name.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _showLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
  }

  void _hideLoading() {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      if (passwordController.text != confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Password dan konfirmasi tidak cocok')),
        );
        return;
      }

      _showLoading(); // Tampilkan loading

      try {
        // 1. Daftar akun
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim(),
            );

        // 2. Tambahkan display name ke akun user
        await userCredential.user?.updateDisplayName(
          nameController.text.trim(),
        );

        // 3. (Opsional) Refresh user biar datanya langsung up-to-date
        await userCredential.user?.reload();

        // 4. Tampilkan pesan sukses & navigasi ke halaman login
        _hideLoading();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Pendaftaran berhasil. Silakan login.')),
        );
        Get.offNamed(AppRoutesName.pageLogin);
      } on FirebaseAuthException catch (e) {
        _hideLoading();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Pendaftaran gagal: ${e.message}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  child: CustomTextFormField(
                    label: 'Nama',
                    controller: nameController,
                  ),
                ),
                SizedBox(height: 16),
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
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomTextFormField(
                    label: 'Konfirmasi Password',
                    controller: confirmPasswordController,
                    isPassword: true,
                  ),
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
                    Expanded(
                      child: Divider(color: Color(0xffC0C0C0), height: 3),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Atau daftar menggunakan',
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
                    Text('Sudah punya akun? '),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutesName.pageLogin);
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: TextFormField(
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
      ),
    );
  }
}
