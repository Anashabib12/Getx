import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/fruit_controller.dart';

class Screen4 extends StatelessWidget {
  Screen4({super.key});

  final FruitController controller = Get.put(FruitController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 4'),
      ),
      body: ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    if (controller.favList
                        .contains(controller.fruitList[index])) {
                      controller.remove(controller.fruitList[index]);
                    } else {
                      controller.addToFav(controller.fruitList[index]);
                    }
                  },
                  title: Text(controller.fruitList[index]),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: controller.favList
                              .contains(controller.fruitList[index])
                          ? Colors.red
                          : Colors.grey,
                    ),
                  )),
            );
          }),
    );
  }
}
