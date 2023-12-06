import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/profile_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

import '../../custom_widget/custom_button.dart';
import '../../custom_widget/custom_textfield.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    final namecontroller = TextEditingController();

    final addresscontroller = TextEditingController();

    final citycontroller = TextEditingController();

    final statecontroller = TextEditingController();

    final zipcodecontroller = TextEditingController();

    final countrycontroller = TextEditingController();

    List name = ['Jane Doe'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Shipping Addresses',
            style: TextStyle(fontFamily: 'Metropolis', color: Colors.black87)),
      ),
      body: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Container(
                        width: double.infinity,
                        height: Dimensions.heightCalc(context, 160),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 16),
                        child: Text(
                          name[index],
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: Dimensions.heightCalc(context, 18)),
                        ),
                      ),
                      SizedBox(
                          width: Dimensions.widthCalc(context, 240),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55, left: 16),
                            child: Text(
                              '3 NewBridge Court Chino Hills, CA 91709, United States',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 15)),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 280),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 18),
                                  fontFamily: 'Metropolis',
                                  color: const Color(0xffDB3022)),
                            )),
                      ),
                      Consumer<ProfileProvider>(
                        builder: (BuildContext context, shippingData,
                            Widget? child) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 90,
                            ),
                            child: Row(
                              children: [
                                Checkbox(
                                    value: shippingData.checkBoxValues,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    activeColor: Colors.black87,
                                    onChanged: (shippingValues) {
                                      shippingData.shippingCheckbox();
                                    }),
                                Text(
                                  'Use as the shipping address',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize:
                                          Dimensions.heightCalc(context, 15)),
                                )
                              ],
                            ),
                          );
                        },
                      )
                    ]),
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: Dimensions.heightCalc(context, 10),
              );
            },
            itemCount: name.length,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 290),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25))),
                    builder: (context) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                'Adding Shipping Address',
                                style: TextStyle(
                                    fontSize:
                                        Dimensions.heightCalc(context, 20),
                                    fontFamily: 'Metropolis'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 40, left: 10, right: 10),
                              child: CustomTextfield(
                                text1: 'Full Name',
                                text2: 'Full Name',
                                controller: namecontroller,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.heightCalc(context, 15),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: CustomTextfield(
                                  text1: 'Address',
                                  text2: 'Address',
                                  controller: addresscontroller),
                            ),
                            SizedBox(
                              height: Dimensions.heightCalc(context, 15),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: CustomTextfield(
                                  text1: 'City',
                                  text2: 'City',
                                  controller: citycontroller),
                            ),
                            SizedBox(
                              height: Dimensions.heightCalc(context, 15),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: CustomTextfield(
                                  text1: 'State/Province/Region',
                                  text2: 'State/Province/Region',
                                  controller: statecontroller),
                            ),
                            SizedBox(
                              height: Dimensions.heightCalc(context, 15),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: CustomTextfield(
                                  text1: 'Zip Code (Postal Code)',
                                  text2: 'Zip Code (Postal Code)',
                                  controller: zipcodecontroller),
                            ),
                            SizedBox(
                              height: Dimensions.heightCalc(context, 15),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Stack(children: [
                                CustomTextfield(
                                    text1: 'Country',
                                    text2: 'Country',
                                    controller: countrycontroller),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 310),
                                  child: Icon(Icons.arrow_forward_ios_rounded,
                                      size: 20),
                                )
                              ]),
                            ),
                            SizedBox(
                              height: Dimensions.heightCalc(context, 50),
                            ),
                            SizedBox(
                                height: Dimensions.heightCalc(context, 50),
                                width: Dimensions.widthCalc(context, 343),
                                child: CustomButton(
                                    text: 'SAVE ADDRESS', onPressed: () {}))
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black87),
                height: Dimensions.heightCalc(context, 40),
                width: Dimensions.widthCalc(context, 40),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
