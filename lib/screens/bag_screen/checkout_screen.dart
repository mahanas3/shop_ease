import 'package:flutter/material.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text('Checkout',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 25),
                  fontFamily: 'Metropolis',
                  color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 130, top: 40),
              child: Text(
                'Shipping address',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: Dimensions.heightCalc(context, 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 108),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Row(
                    children: [
                      Text(
                        'Jane Doe',
                        style: TextStyle(
                            fontSize: Dimensions.heightCalc(context, 17),
                            fontFamily: 'Metropolis'),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 140),
                      ),
                      Text(
                        'Change',
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: Dimensions.heightCalc(context, 17),
                            color: const Color(0xffDB3022)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 12),
                  child: Text(
                    '3 NewBridge CourtChino Hills, CA 91709, United States',
                    style:
                        TextStyle(fontSize: Dimensions.heightCalc(context, 16)),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: Dimensions.heightCalc(context, 70),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  height: Dimensions.heightCalc(context, 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Row(
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(
                            fontSize: Dimensions.heightCalc(context, 18),
                            fontFamily: 'Metropolis'),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 150),
                      ),
                      Text(
                        'Change',
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: Dimensions.heightCalc(context, 17),
                            color: const Color(0xffDB3022)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: Container(
                    height: Dimensions.heightCalc(context, 48),
                    width: Dimensions.widthCalc(context, 64),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 35),
                  child: Container(
                    height: Dimensions.heightCalc(context, 20),
                    width: Dimensions.widthCalc(context, 20),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffEB001B)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 49),
                  child: Container(
                    height: Dimensions.heightCalc(context, 20),
                    width: Dimensions.widthCalc(context, 20),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF79E1B)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 30),
                  child: Text(
                    'mastercard',
                    style: TextStyle(
                        fontSize: Dimensions.heightCalc(context, 8),
                        fontFamily: 'Metropolis'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 100),
                  child: Text(
                    '**** **** **** 3947',
                    style:
                        TextStyle(fontSize: Dimensions.heightCalc(context, 15)),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 20, right: 10),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 110),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    'Delivery method',
                    style: TextStyle(
                        fontSize: Dimensions.heightCalc(context, 18),
                        fontFamily: 'Metropolis'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 5),
                  child: Row(
                    children: [
                      Stack(children: [
                        Container(
                          width: Dimensions.widthCalc(context, 100),
                          height: Dimensions.heightCalc(context, 72),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18, bottom: 15),
                            child: Row(
                              children: [
                                Text('Fed',
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.heightCalc(context, 20),
                                        color: const Color(0xff312280),
                                        fontFamily: 'Metropolis')),
                                Text('Ex',
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.heightCalc(context, 20),
                                        color: const Color(0xffFF5F00),
                                        fontFamily: 'Metropolis')),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 20),
                          child: Text(
                            ' 2-3 days',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.heightCalc(context, 13)),
                          ),
                        )
                      ]),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      Stack(children: [
                        Container(
                          width: Dimensions.widthCalc(context, 100),
                          height: Dimensions.heightCalc(context, 72),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18, bottom: 15),
                            child: Row(
                              children: [
                                Text('Fed',
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.heightCalc(context, 20),
                                        color: const Color(0xff312280),
                                        fontFamily: 'Metropolis')),
                                Text('Ex',
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.heightCalc(context, 20),
                                        color: const Color(0xffFF5F00),
                                        fontFamily: 'Metropolis')),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 20),
                          child: Text(
                            ' 2-3 days',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.heightCalc(context, 13)),
                          ),
                        )
                      ]),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      Stack(children: [
                        Container(
                          width: Dimensions.widthCalc(context, 100),
                          height: Dimensions.heightCalc(context, 72),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18, bottom: 15),
                            child: Row(
                              children: [
                                Text('Fed',
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.heightCalc(context, 20),
                                        color: const Color(0xff312280),
                                        fontFamily: 'Metropolis')),
                                Text('Ex',
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.heightCalc(context, 20),
                                        color: const Color(0xffFF5F00),
                                        fontFamily: 'Metropolis')),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 20),
                          child: Text(
                            ' 2-3 days',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.heightCalc(context, 13)),
                          ),
                        )
                      ]),
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 90),
                  width: Dimensions.widthCalc(context, 350),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13, top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Order:',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: Dimensions.heightCalc(context, 15)),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 220),
                      ),
                      Text(
                        '112\$',
                        style: TextStyle(
                            fontSize: Dimensions.heightCalc(context, 16),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 60),
                  child: Row(
                    children: [
                      Text(
                        'Delivery:',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: Dimensions.heightCalc(context, 15)),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 203),
                      ),
                      Text(
                        '15\$',
                        style: TextStyle(
                            fontSize: Dimensions.heightCalc(context, 16),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13, top: 90),
                  child: Row(
                    children: [
                      Text(
                        'Summary:',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: Dimensions.heightCalc(context, 15),
                            fontFamily: 'Metropolis'),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 190),
                      ),
                      Text(
                        '127\$',
                        style: TextStyle(
                            fontSize: Dimensions.heightCalc(context, 16),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              child: SizedBox(
                  height: Dimensions.heightCalc(context, 48),
                  width: Dimensions.widthCalc(context, 343),
                  child: CustomButton(text: 'SUBMIT ORDER', onPressed: () {})),
            )
          ],
        ),
      ),
    );
  }
}
