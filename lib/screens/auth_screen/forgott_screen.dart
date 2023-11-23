import 'package:flutter/material.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller2 = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 120, right: 30),
            child: Text('Forgot password',
                style: TextStyle(fontFamily: 'Metropolis', fontSize: 34)),
          ),
           SizedBox(
            height: Dimensions.heightCalc(context, 100),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                style: TextStyle(fontFamily: 'Metropolis2', fontSize: Dimensions.heightCalc(context, 15))),
          ),
           SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CustomTextfield(
              text1: 'Email',
              text2: 'Email',
              controller: emailcontroller2,
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                  return 'Not a valid email address. Should be your@email.com!';
                }
                return null;
              },
            ),
          ),
           SizedBox(
            height: Dimensions.heightCalc(context, 90),
          ),
          SizedBox(
              height: Dimensions.heightCalc(context, 48),
              width: Dimensions.widthCalc(context, 325),
              child: CustomButton(
                  text: 'SEND',
                  onPressed: () {
                    Navigator.pop(context);
                  }))
        ],
      ),
    );
  }
}
