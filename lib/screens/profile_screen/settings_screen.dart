import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final namecontroller = TextEditingController();

    final dobcontroller = TextEditingController();

    final passwordcontroller = TextEditingController();

    final oldpasswordcontroller = TextEditingController();

    final newpasswordcontroller = TextEditingController();

    final repeatnewpasswordcontroller = TextEditingController();

    bool status = false;
    bool isSwitchOn = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 180, top: 10),
              child: Text(
                'Settings',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 34),
                    fontFamily: 'Metropolis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 110),
              child: Text(
                'Personal Information',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 20),
                    fontFamily: 'Metropolis'),
              ),
            ),
            SizedBox(
              height: Dimensions.heightCalc(context, 15),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextfield(
                  text1: 'Full name',
                  text2: 'Full name',
                  controller: namecontroller),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextfield(
                  text1: 'Date of Birth',
                  text2: 'Date of Birth',
                  controller: dobcontroller),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: Dimensions.heightCalc(context, 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 180),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25))),
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Text(
                                      'Password Change',
                                      style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: Dimensions.heightCalc(
                                              context, 20)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.heightCalc(context, 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: CustomTextfield(
                                        text1: 'Old Password',
                                        text2: 'Old Password',
                                        controller: oldpasswordcontroller),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 160, top: 10),
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          fontSize: Dimensions.heightCalc(
                                              context, 15),
                                          fontFamily: 'Metropolis2',
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 20),
                                    child: CustomTextfield(
                                        text1: 'New Password',
                                        text2: 'New Password',
                                        controller: newpasswordcontroller),
                                  ),
                                  SizedBox(
                                    height: Dimensions.heightCalc(context, 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: CustomTextfield(
                                        text1: 'Repeat New Password',
                                        text2: 'Repeat New Password',
                                        controller:
                                            repeatnewpasswordcontroller),
                                  ),
                                  SizedBox(
                                    height: Dimensions.heightCalc(context, 30),
                                  ),
                                  SizedBox(
                                    height: Dimensions.heightCalc(context, 50),
                                    width: Dimensions.widthCalc(context, 320),
                                    child: CustomButton(
                                        text: 'SAVE PASSWORD',
                                        onPressed: () {}),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                        fontFamily: 'Metropolis2',
                        color: Colors.grey,
                        fontSize: Dimensions.heightCalc(context, 15),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.heightCalc(context, 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextfield(
                  text1: 'Password',
                  text2: 'Password',
                  controller: passwordcontroller),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 190, top: 30),
              child: Text(
                'Notifications',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 20),
                    fontFamily: 'Metropolis'),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'Sales',
                    style: TextStyle(
                        fontSize: Dimensions.heightCalc(context, 18),
                        fontFamily: 'Metropolis2'),
                  ),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 230),
                ),
                SizedBox(
                  height: Dimensions.heightCalc(context, 50),
                  width: Dimensions.widthCalc(context, 50),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: FlutterSwitch(
                        activeColor: Colors.black87,
                        value: status,
                        onToggle: (val) {
                          setState(() {});
                        }),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220, top: 10),
              child: Text(
                'New arrivals',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 18),
                    fontFamily: 'Metropolis2'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 125),
              child: Text(
                'Delivery status changes',
                style: TextStyle(
                    fontFamily: 'Metropolis2',
                    fontSize: Dimensions.heightCalc(context, 18)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
