import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/provider/profile_provider.dart';

class AddShippingAddress extends StatefulWidget {
  const AddShippingAddress({super.key});

  @override
  State<AddShippingAddress> createState() => _AddShippingAddressState();
}

class _AddShippingAddressState extends State<AddShippingAddress> {
  final namecontroller = TextEditingController();

  final addresscontroller = TextEditingController();

  final citycontroller = TextEditingController();

  final statecontroller = TextEditingController();

  final zipcodecontroller = TextEditingController();

  final countrycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        title: const Text('Adding Shipping Address',
            style: TextStyle(
                fontFamily: 'Metropolis', fontSize: 20, color: Colors.black87)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextfield(
                text1: 'Full Name',
                text2: 'Full Name',
                controller: namecontroller,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextfield(
                  text1: 'Address',
                  text2: 'Address',
                  controller: addresscontroller),
              const SizedBox(
                height: 15,
              ),
              CustomTextfield(
                  text1: 'City', text2: 'City', controller: citycontroller),
              const SizedBox(
                height: 15,
              ),
              CustomTextfield(
                  text1: 'State/Province/Region',
                  text2: 'State/Province/Region',
                  controller: statecontroller),
              const SizedBox(
                height: 15,
              ),
              CustomTextfield(
                  text1: 'Zip Code (Postal Code)',
                  text2: 'Zip Code (Postal Code)',
                  controller: zipcodecontroller),
              const SizedBox(
                height: 15,
              ),
              CustomTextfield(
                  text1: 'Country',
                  text2: 'Country',
                  controller: countrycontroller),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: 50,
                  width: 343,
                  child: CustomButton(
                      text: 'SAVE ADDRESS',
                      onPressed: () {

                      }))
            ],
          ),
        ),
      ),
    );
  }
}
