import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobile_insurance/screens/auth/login/view.dart';
import 'package:mobile_insurance/screens/auth/signup/controller.dart';

import '../../../utils/widgets/custom_btn.dart';
import '../../../utils/widgets/text_field.dart';

class UserSignUp extends StatelessWidget {
  final SignUpController signUpController = Get.put(SignUpController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cfmpasswordController = TextEditingController();
   UserSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "sign up",
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
                  textHide: false,
                  controller: nameController,
                  hintText: "username",
                  icon: const Icon(Icons.email)),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  textHide: true,
                  controller: passwordController,
                  hintText: 'password',
                  icon: const Icon(Icons.password)),
const SizedBox(
                height: 20,
              ),
                   CustomTextField(
                  textHide: true,
                  controller: cfmpasswordController,
                  hintText: "confirm password",
                  icon: const Icon(Icons.password)),
              

              
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                  text: 'sign up',
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
                    "already have an account? ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[700]),
                  ),
                  GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      // add navigation to Sign up screen
                      Get.offAll(UserLoginScreen());
                    },
                    child: Text(
                      "log in",
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