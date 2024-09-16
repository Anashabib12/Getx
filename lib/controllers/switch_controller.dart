import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool x = false.obs;

  on() {
    x.value = !x.value;
    print(x.value);
  }

  // on(bool value) {
  //   x.value = value;
  // }
}
