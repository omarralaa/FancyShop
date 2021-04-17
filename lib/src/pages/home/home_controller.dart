import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';

class HomeController extends GetxController {
  // final MyRepository repository;
  // HomeController({@required this.repository}) : assert(repository != null);

  // final _obj = ''.obs;
  // set obj(value) => this._obj.value = value;
  // get obj => this._obj.value;
  //

  void logout() {
    final authController = Get.find<AuthController>();
    authController.logout();
  }
}
