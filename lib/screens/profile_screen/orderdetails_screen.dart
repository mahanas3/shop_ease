import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';

import '../../provider/profile_provider.dart';
import '../../utilities/dimensions.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyroPh5ZAy1jXpjij7GYCSRRJWojc73skk2RWtKYj4zCHiDfwD3RCcIEAVgue8XMZAuE4&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo6dKqfM_exfy3ca4v2AJRjrncGca0piKZug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf7RqOWvXPwA1P6I54iL_0TkcGAT4lJw1m_Q&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0x000000ff),
          elevation: 0,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Order Details',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: Dimensions.heightCalc(context, 25),
                    color: Colors.black87),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black87,
              ),
            )
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'Order №1947034',
                  style: TextStyle(
                      fontSize: Dimensions.heightCalc(context, 16),
                      fontFamily: 'Metropolis'),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 90),
                ),
                Text('05-12-2019',
                    style: TextStyle(
                        fontSize: Dimensions.heightCalc(context, 18),
                        fontFamily: 'Metropolis2',
                        color: Colors.grey))
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Tracking number:',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Metropolis2',
                    fontSize: Dimensions.heightCalc(context, 18),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'IW3475453455',
                  style: TextStyle(
                      fontSize: Dimensions.heightCalc(context, 18),
                      fontFamily: 'Metropolis',
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 170),
            child: Text(
              'Delivered',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 18),
                  fontFamily: 'Metropolis',
                  color: const Color(0xff2AA952)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              '3 items',
              style: TextStyle(fontFamily: 'Metropolis', fontSize: 18),
            ),
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      height: Dimensions.heightCalc(context, 120),
                      width: Dimensions.widthCalc(context, 150),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 5),
                          child: Text(
                            'Pullover',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 18),
                                fontFamily: 'Metropolis'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Mango',
                            style: TextStyle(
                              fontSize: Dimensions.heightCalc(context, 15),
                              fontFamily: 'Metropolis2',
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 5),
                              child: Text(
                                'Color:',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Metropolis2',
                                  fontSize: Dimensions.heightCalc(context, 16),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Gray',
                                style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 15),
                                  fontFamily: 'Metropolis2',
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Row(
                            children: [
                              Text(
                                'Size:',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Metropolis2',
                                  fontSize: Dimensions.heightCalc(context, 16),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'L',
                                style: TextStyle(
                                  fontFamily: 'Metropolis2',
                                  color: Colors.black87,
                                  fontSize: Dimensions.heightCalc(context, 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                'Unit:',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Metropolis2',
                                  fontSize: Dimensions.heightCalc(context, 16),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontFamily: 'Metropolis2',
                                  color: Colors.black87,
                                  fontSize: Dimensions.heightCalc(context, 16),
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthCalc(context, 80),
                              ),
                              Text(
                                '51\$',
                                style: TextStyle(
                                    fontSize:
                                        Dimensions.heightCalc(context, 16),
                                    color: Colors.black87,
                                    fontFamily: 'Metropolis'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: images.length,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170, top: 20),
            child: Text(
              'Order information',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 18),
                  fontFamily: 'Metropolis'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Shipping Address:',
                  style: TextStyle(
                      fontFamily: 'Metropolis2',
                      fontSize: Dimensions.heightCalc(context, 16),
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 4),
                child: Text(
                  '3 NewBridge Court ,',
                  style: TextStyle(
                      fontSize: Dimensions.heightCalc(context, 16),
                      fontFamily: 'Metropolis2'),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Chino Hills, CA 91709, United States',
              style: TextStyle(fontSize: 16, fontFamily: 'Metropolis2'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Payment method:',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Metropolis2',
                      fontSize: Dimensions.heightCalc(context, 16)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  '**** **** **** 3947',
                  style: TextStyle(
                      fontFamily: 'Metropolis2',
                      color: Colors.black87,
                      fontSize: Dimensions.heightCalc(context, 16)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Delivery method:',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Metropolis2',
                    fontSize: Dimensions.heightCalc(context, 16),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'FedEx, 3 days, 15\$',
                  style: TextStyle(
                    fontFamily: 'Metropolis2',
                    color: Colors.black87,
                    fontSize: Dimensions.heightCalc(context, 16),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Discount:',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Metropolis2',
                    fontSize: Dimensions.heightCalc(context, 16),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 50),
                child: Text(
                  '10%, Personal promo code',
                  style: TextStyle(
                    fontFamily: 'Metropolis2',
                    color: Colors.black87,
                    fontSize: Dimensions.heightCalc(context, 16),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Total Amount:',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Metropolis2',
                    fontSize: Dimensions.heightCalc(context, 16),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 17),
                child: Text(
                  '133\$',
                  style: TextStyle(
                      fontFamily: 'Metropolis2',
                      color: Colors.black87,
                      fontSize: Dimensions.heightCalc(context, 16)),
                ),
              )
            ],
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                SizedBox(
                  width: Dimensions.widthCalc(context, 130),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0x000000ff),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black87),
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const Text(
                        'Reorder',
                        style: TextStyle(color: Colors.black87),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(text: 'Leave feedback', onPressed: () {})
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
