import 'package:flutter/material.dart';
import 'package:tugas_getx/Users/model/user_model.dart';
import 'package:tugas_getx/Users/service/user_service.dart';

class UserDetailPage extends StatefulWidget {
  final int userId;

  const UserDetailPage({super.key, required this.userId});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  UserModel? users;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    isLoading = true;
    users = await UserService().fetchUserDetail(widget.userId);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Detail Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            isLoading
                ? const Center(child: const CircularProgressIndicator())
                : ListTile(
                  title: Text('${users?.firstName} ${users?.lastName}'),
                  leading: Image.network(
                    users?.avatar ?? "",
                    height: 50,
                    width: 50,
                  ),
                  subtitle: Text(users?.email ?? ""),
                ),
      ),
    );
  }
}
