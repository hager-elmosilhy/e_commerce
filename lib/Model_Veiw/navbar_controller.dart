
import 'package:get/state_manager.dart';

class NavBarController extends GetxController {
  var selectedIndex = 0.obs;
  var textValue = 0.obs;

  // get navigatorValue => _navigatorValue;

  void changeIndex(int index) {
    selectedIndex.value = index;
    //update();
  }

  void increaseVlaue() {
    textValue.value++;
  }
}
