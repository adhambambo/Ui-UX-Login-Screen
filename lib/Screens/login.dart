import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_page/cores/constantancs.dart';
import 'package:login_page/cores/custom_button.dart';
import 'package:login_page/cores/custom_text.dart';
import 'package:login_page/cores/custom_text_form_field.dart';


class LoginScreen extends GetWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Welcome',
                fontSize: 30,
              ),
              CustomText(
                text: 'Sign Up',
                fontSize: 18,
                color: kPrimaryColor,
              )
            ],
          ),
          const SizedBox(height: 10),
          const CustomText(
            text: 'Sign in To Continue',
            fontSize: 14,
            color: Colors.grey,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            text: 'Email',
            hint: 'Enter you Email',
            onSaved: (value) {},
            validator: (value) {},
          ),
          const SizedBox(height: 40),
          CustomTextFormField(
            text: 'Password',
            hint: '********',
            onSaved: (value) {},
            validator: (value) {},
          ),
          const SizedBox(height: 20),
          const CustomText(
            text: 'forgot Password?',
            alignment: Alignment.topRight,
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: 'Sign In',
            onPressed: () {
              Get.to(());
            },
          ),
          const SizedBox(height: 30),
          const CustomText(
            text: '-OR-',
            alignment: Alignment.center,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: CustomButtonWithIcon(
                  text: '   LOG IN WITH',
                  iconData: FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  texts: '  LOG IN WITH',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomButtonWithIcon(
                  text: '  LOG IN WITH',
                  iconData: FontAwesomeIcons.google,
                  color: Colors.red,
                  texts: '    LOG IN WITH',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
