import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tugas_getx/Users/model/user_model.dart';
import 'package:tugas_getx/Users/page/user_detail_page.dart';
import 'package:tugas_getx/Users/service/user_service.dart';

class UserController extends GetxController {
  var users = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchDataUsers();
  }

  Future<void> fetchDataUsers() async {
    final serviceUser = UserService();
    users.value = await serviceUser.fetchUser();
    update();
  }

  void goToUserDetail(int userId) {
    Get.to(() => UserDetailPage(userId: userId));
  }
}
