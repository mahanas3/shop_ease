import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/provider/auth_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller1 = TextEditingController();
  final passwordcontroller1 = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 120, right: 190),
                child: Text(
                  'Login',
                  style: TextStyle(fontFamily: 'Metropolis', fontSize: 34),
                ),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 60),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'Email',
                  text2: 'Email',
                  controller: emailcontroller1,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.endsWith('@gmail.com')) {
                      return 'Please enter valid email';
                    }
                  },
                ),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'Password',
                  text2: 'Password',
                  controller: passwordcontroller1,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Row(
                  children: [
                    const Text(
                      'Forgot your password?',
                      style: TextStyle(fontFamily: 'Metropolis2', fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          context.read<AuthProvider>().forgotPassword(context);
                        },
                        child: const Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Color(0xffDB3022),
                        )),
                  ],
                ),
              ),
               SizedBox(
                height: Dimensions.heightCalc(context, 30),
              ),
              SizedBox(
                  height: Dimensions.heightCalc(context, 48),
                  width: Dimensions.widthCalc(context, 325),
                  child: CustomButton(
                      text: 'LOGIN',
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          context.read<AuthProvider>().login(context);
                        }
                      })),
              SizedBox(
                height: Dimensions.heightCalc(context, 90),
              ),
              const Text(
                'Or login with social account',
                style: TextStyle(fontFamily: 'Metroplis2', fontSize: 15),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    Container(
                      height: Dimensions.heightCalc(context, 90),
                      width: Dimensions.widthCalc(context, 92),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/google.png')),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                     SizedBox(
                      width: Dimensions.widthCalc(context, 20),
                    ),
                    Container(
                      height: Dimensions.heightCalc(context, 90),
                      width: Dimensions.widthCalc(context, 92),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/facebook.jpg')),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
