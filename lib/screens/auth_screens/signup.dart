import 'package:flutter/material.dart';

import '../../utils/app_constants.dart';
import '../../widgets/Text_form_field_widget.dart';
import '../../widgets/Text_widget.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/button_widget.dart';

class SignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 155, right: 16, left: 16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  AppConstants.logoBlue,
                  const SizedBox(
                    height: 16,
                  ),
                  const TextWidget(
                    txt: "Let’s Get Started",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textColor: AppConstants.titleTextColor,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const TextWidget(
                    txt: "Create an new account",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    textColor: AppConstants.subTxtColor,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  TextFormFieldWidget(
                    hintText: "Full Name",
                    minLines: 1,
                    maxLines: 1,
                    prefixIcon: Icon(Icons.person_outline),
                    isPasswordField: false,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Enter your full name ";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormFieldWidget(
                    minLines: 1,
                    maxLines: 1,
                    hintText: "Your Email",
                    prefixIcon: Icon(Icons.email_outlined),
                    isPasswordField: false,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Enter your email ";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormFieldWidget(
                    minLines: 1,
                    maxLines: 1,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_outline),
                    isPasswordField: true,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Enter your password ";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  TextFormFieldWidget(
                    minLines: 1,
                    maxLines: 1,
                    hintText: "Password Again",
                    prefixIcon: Icon(Icons.lock),
                    isPasswordField: true,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Enter your password again ";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ButtonWidget(
                      buttonText: "Sign Up",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavigation()));
                        }
                      }),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextWidget(
                        txt: "have a account? ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: AppConstants.subTxtColor,
                      ),
                      TextWidget(
                        txt: "Sign In",
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        textColor: AppConstants.primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
