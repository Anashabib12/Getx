import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => TextButton(
                onPressed: () {
                  controller.LoginApi();
                },
                child: controller.loading.value
                    ? const Center(
                        child: const CircularProgressIndicator(),
                      )
                    : const Text('Login')))
          ],
        ),
      ),
    );
  }
}
