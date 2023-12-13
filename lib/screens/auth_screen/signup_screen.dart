import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/provider/auth_provider.dart';
import '../../utilities/dimensions.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final phoneNoController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 190),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      color: Colors.black87,
                      fontSize: Dimensions.heightCalc(context, 34)),
                ),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 35),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                    text1: 'UserName',
                    text2: 'UserName',
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter valid name';
                      }
                      return null;
                    }),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'Password',
                  text2: 'Password',
                  controller: passwordController,
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
              SizedBox(
                height: Dimensions.heightCalc(context, 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'Email',
                  text2: 'Email',
                  controller: emailController,
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
              SizedBox(
                height: Dimensions.heightCalc(context, 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomTextfield(
                  text1: 'PhoneNo',
                  text2: 'PhoneNo',
                  controller: phoneNoController,
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
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontFamily: 'Metropolis2',
                        fontSize: Dimensions.heightCalc(context, 15),
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
              SizedBox(
                height: Dimensions.heightCalc(context, 20),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 48),
                width: Dimensions.widthCalc(context, 325),
                child: CustomButton(
                  text: 'SIGN UP',
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      context.read<AuthProvider>().signUpScreen(
                          context,
                          nameController.text,
                          passwordController.text,
                          emailController.text,
                          phoneNoController.text);
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setString('isloggedIn', '6558dd199ca38827ad0a5d84');
                    }
                  },
                ),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 30),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Or sign up with social account',
                  style: TextStyle(fontFamily: 'Metropolis2', fontSize: 15),
                ),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 18),
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
