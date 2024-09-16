import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/opacity_controller.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});
  final OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(()=>Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            ),)
          ),
          Obx(() => Slider(value: controller.opacity.value, onChanged: (value) {
            controller.changeOpacity(value);
          }))
        ],
      ),
    );
  }
}
