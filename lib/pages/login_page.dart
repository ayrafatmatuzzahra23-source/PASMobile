import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/component/my_button.dart';
import 'package:pas_mobile/component/my_text_field.dart';
import 'package:pas_mobile/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 28,
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: 
                MyTextField(
                  controller: controller.txtUsername,
                  myHint: "Username",
                  radius: 5,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: 
                MyTextField(
                  controller: controller.txtPassword,
                  myHint: "Sandi",
                  radius: 5,
                  obscureText: true,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: 
                Obx(
                  () => controller.isLoading.value ? Center(
                    child: CircularProgressIndicator(),
                  ) :
                MyButton(
                  text: "Masuk",
                  buttonColor: const Color.fromARGB(255, 255, 255, 255),
                  width: 350,
                  onPressed: () {
                    controller.login();
                  },
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}