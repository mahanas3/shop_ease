import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/provider/screen_provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final namecontroller = TextEditingController();
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    final phonenocontroller = TextEditingController();

    var _formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70, right: 190),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      color: Colors.black87,
                      fontSize: 34),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                    text1: 'UserName',
                    text2: 'UserName',
                    controller: namecontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter valid name';
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'Password',
                  text2: 'Password',
                  controller: passwordcontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    } else if (value.length < 8) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'Email',
                  text2: 'Email',
                  controller: emailcontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter an email address';
                    }
                    if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$")
                        .hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'PhoneNo',
                  text2: 'PhoneNo',
                  controller: phonenocontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Number!';
                    } else if (value.length < 9) {
                      return 'PhoneNo must be at least 10 characters';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 100),
                child: Row(
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontFamily: 'Metroplis2',
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Color(0xffDB3022),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 48,
                width: 325,
                child: CustomButton(
                  text: 'SIGN UP',
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      context.read<ScreenProvider>().signUpScreen(
                          context,
                          namecontroller.text,
                          passwordcontroller.text,
                          emailcontroller.text,
                          phonenocontroller.text);
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Or sign up with social account',
                  style: TextStyle(fontFamily: 'Metroplis2', fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 92,
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
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 90,
                      width: 92,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/facebook.jpg')),
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
