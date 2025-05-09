import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas14_routing/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
                      image: AssetImage('assets/image/deal.png'),
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
                padding: EdgeInsets.only(bottom: 0),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Lupa password?",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
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
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();

                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      );

                      emailController.clear();
                      passwordController.clear();

                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text("Login Berhasil"),
                              content: Text("Selamat datang kembali!"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    // Navigator.pushReplacementNamed(context, '/home');
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            ),
                      );
                    } catch (e) {
                      debugPrint('Firebase Auth Login Error: $e');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login gagal: ${e.toString()}")),
                      );
                    }
                  },
                  child: Text('Masuk', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 38),
              Row(
                children: [
                  Expanded(child: Divider(color: Color(0xffC0C0C0), height: 3)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau masuk menggunakan',
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
                        Text('Google', style: TextStyle(color: Colors.red)),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      ' Mendaftar ',
                      style: TextStyle(color: Color(0xffF3498DB)),
                    ),
                  ),
                  Text('sekarang.'),
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
    this.controller,
    this.obscureText = false,
    this.padding = const EdgeInsets.only(bottom: 25),
  });

  final String label;
  final EdgeInsets padding;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
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
