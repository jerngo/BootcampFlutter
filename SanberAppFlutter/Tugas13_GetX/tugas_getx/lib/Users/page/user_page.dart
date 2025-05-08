import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_getx/Users/page/user_detail_page.dart';
import 'package:tugas_getx/controller/user_controller.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});

  final UserController userCont = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Page')),
      body: Obx(() {
        if (userCont.users.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: userCont.users.length,
          itemBuilder: (context, index) {
            final user = userCont.users[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('${user.firstName} ${user.lastName}'),
                leading: Image.network(user.avatar, height: 50, width: 50),
                subtitle: Text(user.email),
                onTap: () {
                  userCont.goToUserDetail(user.id);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
