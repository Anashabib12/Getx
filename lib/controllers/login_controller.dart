import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void LoginApi() async {
    loading.value = true;
    try {
      final Response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      });

      var data = jsonDecode(Response.body);
      print(Response.statusCode);
      print(data);

      if (Response.statusCode == 200) {
        loading.value = false;

        Get.snackbar('Login Succesfull', 'Congratulations');
      } else {
        loading.value = false;

        Get.snackbar('Login failed', data['error']);
      }
    } catch (e) {
      loading.value = false;

      Get.snackbar("Exception", e.toString());
    }
  }
}
