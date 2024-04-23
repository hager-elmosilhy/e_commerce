
import 'package:e_commerce/Model_Veiw/count_controller.dart';
import 'package:e_commerce/Model_Veiw/navbar_controller.dart';
import 'package:e_commerce/Screens/home.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => const HomeScreen());
    Get.lazyPut(() => NavBarController());
    Get.lazyPut(() => CountController());
  }
}
