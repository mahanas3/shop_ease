import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/profile_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class Delivered extends StatefulWidget {
  const Delivered({super.key});

  @override
  State<Delivered> createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
  List orderNo = ['Order №1947034', 'Order №1947034', 'Order №1947034'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              child: Container(
                height: Dimensions.heightCalc(context, 230),
                width: double.infinity,
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 25.0,
                  ),
                ], borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(orderNo[index],
                              style: const TextStyle(
                                  fontFamily: 'Metropolis', fontSize: 18)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 60, top: 20),
                          child: Text(
                            '05-12-2019',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Metropolis2',
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 20),
                          child: Text(
                            'Tracking number:',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Metropolis2',
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'IW3475453455',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Metropolis',
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 20),
                          child: Text(
                            'Quantity:',
                            style: TextStyle(
                                fontFamily: 'Metropolis2',
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            '3',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Metropolis',
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          child: Text(
                            'Total Amount:',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Metropolis2',
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                          child: Text(
                            '112\$',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Metropolis',
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: SizedBox(
                          height: 50,
                          width: 110,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  side: const BorderSide(color: Colors.black87),
                                  backgroundColor: const Color(0x000000ff),
                                  elevation: 0),
                              onPressed: () {
                                context
                                    .read<ProfileProvider>()
                                    .orderDetails(context);
                              },
                              child: const Text(
                                'Details',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Metropolis',
                                    color: Colors.black87),
                              )),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Text(
                        'Delivered',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Metropolis',
                            color: Color(0xff2AA952)),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 5,
            );
          },
          itemCount: orderNo.length,
        ),
      ),
    );
  }
}
