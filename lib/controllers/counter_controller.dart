import 'package:get/get.dart';

class CounterController extends GetxController {

  RxInt x = 1.obs;

  increment() {
    x.value++;
    print(x.value);
  }
}