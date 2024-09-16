import 'package:get/get.dart';

class FruitController extends GetxController {
  RxList<String> fruitList =
      ['apple', 'mango', 'banana', 'orange', 'grapes'].obs;
  RxList<dynamic> favList = [].obs;

  addToFav(String value) {
    favList.add(value);
  }

  remove(String value) {
    favList.remove(value);
  }
}
