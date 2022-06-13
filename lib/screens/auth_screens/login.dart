import 'package:e_commerce_proejct/screens/auth_screens/signup.dart';

import '../../utils/app_constants.dart';
import '../../widgets/Text_form_field_widget.dart';
import '../../widgets/Text_widget.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/button_widget.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 112, left: 16, right: 16),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  AppConstants.logoBlue,
                  const SizedBox(
                    height: 16,
                  ),
                  const TextWidget(
                    txt: "Welcome to Lafyuu",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textColor: AppConstants.titleTextColor,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const TextWidget(
                    txt: "Sign in to continue",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    textColor: AppConstants.subTxtColor,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  TextFormFieldWidget(
                    hintText: "Your Email",
                    prefixIcon: Icon(Icons.mail_outline),
                    maxLines: 1,
                    minLines: 1,
                    isPasswordField: false,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Enter Your Email ";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormFieldWidget(
                    maxLines: 1,
                    minLines: 1,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_outline),
                    isPasswordField: true,
                    validator: (val) {
                      if (val.isEmpty) {
                        return " Oops! Your Password Is Not Correct";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ButtonWidget(
                    buttonText: "Sign In",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavigation()));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: AppConstants.txtFieldColor,
                          height: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      const TextWidget(
                        txt: "OR",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        textColor: AppConstants.subTxtColor,
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Expanded(
                        child: Container(
                          color: AppConstants.txtFieldColor,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppConstants.txtFieldColor),
                        borderRadius: BorderRadius.circular(5)),
                    child: ListTile(
                      leading: AppConstants.googleIcon,
                      title: const Center(
                        child: TextWidget(
                          txt: "Login with Google",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          textColor: AppConstants.subTxtColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppConstants.txtFieldColor),
                        borderRadius: BorderRadius.circular(5)),
                    child: ListTile(
                      leading: AppConstants.facebookIcon,
                      title: const Center(
                        child: TextWidget(
                          txt: "Login with facebook",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          textColor: AppConstants.subTxtColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextWidget(
                    txt: "Forgot Password?",
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    textColor: AppConstants.primaryColor,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(
                        txt: "Don’t have a account? ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: AppConstants.subTxtColor,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: const TextWidget(
                          txt: "Register",
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          textColor: AppConstants.primaryColor,
                        ),
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
