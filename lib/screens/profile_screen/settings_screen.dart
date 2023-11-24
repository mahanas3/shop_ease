import 'package:flutter/material.dart';
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
      body: Column(
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
          const SizedBox(
            height: 15,
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
                child: Text(
                  'Change',
                  style: TextStyle(
                    fontFamily: 'Metropolis2',
                    color: Colors.grey,
                    fontSize: Dimensions.heightCalc(context, 15),
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
          const Text(
            'Sales',
            style: TextStyle(fontSize: 14, fontFamily: 'Metropolis2'),
          )
        ],
      ),
    );
  }
}
