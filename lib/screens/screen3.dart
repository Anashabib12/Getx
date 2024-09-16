import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/switch_controller.dart';

class Screen3 extends StatelessWidget {
  Screen3({super.key});

  final SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Notifications'),
          Obx(() => Switch(
              value: controller.x.value,
              onChanged: (value) {
                controller.on();
                // controller.on(value);
              }))
        ],
      ),
    );
  }
}
