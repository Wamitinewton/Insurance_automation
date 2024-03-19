import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_insurance/screens/auth/login/controller.dart';
import 'package:mobile_insurance/screens/auth/signup/view.dart';
import 'package:mobile_insurance/utils/widgets/custom_btn.dart';
import 'package:mobile_insurance/utils/widgets/text_field.dart';

class UserLoginScreen extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  UserLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                  textHide: false,
                  controller: emailController,
                  hintText: "email",
                  icon: const Icon(Icons.email)),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  textHide: true,
                  controller: passwordController,
                  hintText: 'password',
                  icon: const Icon(Icons.password)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text("Forgot password"))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                  text: 'login',
                  onPressed: () {},
                  buttonColor: Colors.deepPurpleAccent,
                  width: 150,
                  textStyle: const TextStyle(
                    fontSize: 18,
                  )),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[700]),
                  ),
                  GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      Get.offAll(UserSignUp());
                      // add navigation to Sign up screen
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue[700]
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
