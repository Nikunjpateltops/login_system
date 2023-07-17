import 'package:flutter/material.dart';
import '../Resources/TextStore.dart';
import 'SignupController.dart';

final _formKeyForSignup = GlobalKey<FormState>();

Widget signUpBody(BuildContext context,
    {required TextEditingController fName,
    required TextEditingController lName,
    required TextEditingController email,
    required TextEditingController password,
    required TextEditingController cPassword,
    required VoidCallback onTapSignUp}) {
  return SingleChildScrollView(
    child: Form(
      key: _formKeyForSignup,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  textFormFieldForSignupFirstName(fName),
                  const SizedBox(
                    width: 20,
                  ),
                  textFormFieldForSignupSecondName(lName),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              textFormFieldForSignupEmail(email),
              const SizedBox(
                height: 40,
              ),
              textFormFieldForSignupPassWord(password),
              const SizedBox(
                height: 40,
              ),
              textFormFieldForSignupConfirmPassWord(cPassword),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    if (_formKeyForSignup.currentState!.validate()) {
                      onTapSignUp();
                    }
                  },
                  child: const Text(
                    TextStore.loginPress,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    ),
  );
}
