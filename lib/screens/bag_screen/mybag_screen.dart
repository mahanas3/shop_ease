import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  @override
  Widget build(BuildContext context) {
    final promeodeController = TextEditingController();

    List image = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcResxCFZtoGVSvV_-e1hCluZoOvZt5ROPCLzKct_9bUVCWb6roaS1zaVYhOIVIPuon2lGA&usqp=CAU'
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x000000ff),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search, color: Colors.black87),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 170, top: 10),
            child: Text(
              'My Bag',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 30)),
            ),
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: Dimensions.heightCalc(context, 140),
                                  width: Dimensions.widthCalc(context, 104),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(image[index]))),
                                ),
                                Stack(children: [
                                  Container(
                                    width: Dimensions.widthCalc(context, 245),
                                    height: Dimensions.heightCalc(context, 140),
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10),
                                              child: Text(
                                                'Pullover',
                                                style: TextStyle(
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 20),
                                                    fontFamily: 'Metropolis'),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, left: 120),
                                              child: Icon(
                                                Icons.more_vert_outlined,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text(
                                                'Color:',
                                                style: TextStyle(
                                                    fontFamily: 'Metropolis2',
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 16),
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Black',
                                                style: TextStyle(
                                                    fontFamily: 'Metropolis2',
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 18)),
                                              ),
                                            ),
                                            SizedBox(
                                              width: Dimensions.widthCalc(
                                                  context, 20),
                                            ),
                                            Text(
                                              'Size: ',
                                              style: TextStyle(
                                                  fontFamily: 'Metropolis2',
                                                  fontSize:
                                                      Dimensions.heightCalc(
                                                          context, 16),
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              'L',
                                              style: TextStyle(
                                                fontFamily: 'Metropolis2',
                                                fontSize: Dimensions.heightCalc(
                                                    context, 16),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: Dimensions.heightCalc(
                                                    context, 40),
                                                width: Dimensions.widthCalc(
                                                    context, 40),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.2),
                                                      offset:
                                                          const Offset(2, 3),
                                                    ),
                                                  ],
                                                ),
                                                child: const Icon(
                                                    CupertinoIcons.minus,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                width: Dimensions.heightCalc(
                                                    context, 20),
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                    fontFamily: 'Metropolis',
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 20)),
                                              ),
                                              SizedBox(
                                                width: Dimensions.heightCalc(
                                                    context, 20),
                                              ),
                                              Container(
                                                height: Dimensions.heightCalc(
                                                    context, 40),
                                                width: Dimensions.widthCalc(
                                                    context, 40),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.2),
                                                      offset:
                                                          const Offset(2, 3),
                                                    ),
                                                  ],
                                                ),
                                                child: const Icon(
                                                    CupertinoIcons.add,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                width: Dimensions.heightCalc(
                                                    context, 50),
                                              ),
                                              Text(
                                                '50\$',
                                                style: TextStyle(
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 18),
                                                    fontFamily: 'Metropolis'),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ])
                              ],
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: Dimensions.heightCalc(context, 10),
                      ),
                      itemCount: image.length,
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: Dimensions.heightCalc(context, 5),
              );
            },
            itemCount: image.length,
            //itemCount: context.watch<BagProvider>().cartData.length,
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          Stack(children: [
            CustomTextfield(
                text1: 'Enter your promo code', controller: promeodeController),
            Padding(
              padding: const EdgeInsets.only(left: 300, top: 10),
              child: Container(
                height: Dimensions.heightCalc(context, 40),
                width: Dimensions.widthCalc(context, 40),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black87),
                child:
                    const Icon(CupertinoIcons.arrow_right, color: Colors.white),
              ),
            )
          ]),
          SizedBox(
            height: Dimensions.heightCalc(context, 15),
          ),
          Container(
            height: Dimensions.heightCalc(context, 40),
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Total amount:',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: Dimensions.heightCalc(context, 16),
                          fontFamily: 'Metropolis2')),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 190),
                ),
                Text(
                  '120\$',
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: Dimensions.heightCalc(context, 18)),
                )
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          SizedBox(
              width: Dimensions.widthCalc(context, 340),
              height: Dimensions.heightCalc(context, 55),
              child: CustomButton(text: 'CHECK OUT', onPressed: () {}))
        ],
      ),
    );
  }
}
