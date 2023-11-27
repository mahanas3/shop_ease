import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/provider/bag_provider.dart';
import '../../utilities/dimensions.dart';

class TshirtDetails extends StatefulWidget {
  const TshirtDetails({Key? key}) : super(key: key);

  @override
  State<TshirtDetails> createState() => _TshirtDetailsState();
}

class _TshirtDetailsState extends State<TshirtDetails> {

  @override
  Widget build(BuildContext context) {

    List images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVWVMbzEUzdHUfQv6MOSu5XBcduV9XNZsbLSJZpJ12fQyOPjERRXoljAx1Ar1vZtxe1G4&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3QF-axGlBALLyi2CtE-rFDohLinAPgUwKlN6voyCSX96_mVU74A2ph3vTR7V00GMn7iQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdcviXNMLRL8oY9Z-zZt5B7gP8ABm4MesIaSxc8wIwheCi_KFkV2_Wdh8NfLvQgbCNI5M&usqp=CAU'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text('Tshirts',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  color: Colors.black87,
                  fontSize: Dimensions.heightCalc(context, 25))),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: Dimensions.heightCalc(context, 380),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              (images[index]),
                            ),
                            fit: BoxFit.fill)),
                    width: Dimensions.widthCalc(context, 250),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: Dimensions.widthCalc(context, 5),
                  );
                },
                itemCount: images.length,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Container(
                    height: Dimensions.heightCalc(context, 40),
                    width: Dimensions.widthCalc(context, 130),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Size',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 20),
                                  fontFamily: 'Metropolis2')),
                        ),
                        SizedBox(
                          width: Dimensions.widthCalc(context, 11),
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25))),
                                builder: (context) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 50,
                                        ),
                                        child: Text(
                                          'Select size',
                                          style: TextStyle(
                                              fontSize: Dimensions.heightCalc(
                                                  context, 24),
                                              fontFamily: 'Metropolis'),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 10, right: 10),
                                        child: Stack(children: [
                                          Container(
                                            width: double.infinity,
                                            height: Dimensions.heightCalc(
                                                context, 150),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, left: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: Dimensions.heightCalc(
                                                      context, 40),
                                                  width: Dimensions.widthCalc(
                                                      context, 100),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black87)),
                                                  child: Center(
                                                    child: Text('XS',
                                                        style: TextStyle(
                                                            fontSize: Dimensions
                                                                .heightCalc(
                                                                    context,
                                                                    20),
                                                            fontFamily:
                                                                'Metropolis2')),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: Dimensions.widthCalc(
                                                      context, 15),
                                                ),
                                                Container(
                                                  height: Dimensions.heightCalc(
                                                      context, 40),
                                                  width: Dimensions.widthCalc(
                                                      context, 100),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black87)),
                                                  child: Center(
                                                    child: Text('S',
                                                        style: TextStyle(
                                                            fontSize: Dimensions
                                                                .heightCalc(
                                                                    context,
                                                                    20),
                                                            fontFamily:
                                                                'Metropolis2')),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: Dimensions.widthCalc(
                                                      context, 15),
                                                ),
                                                Container(
                                                  height: Dimensions.heightCalc(
                                                      context, 40),
                                                  width: Dimensions.widthCalc(
                                                      context, 100),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black87)),
                                                  child: Center(
                                                    child: Text('M',
                                                        style: TextStyle(
                                                            fontSize: Dimensions
                                                                .heightCalc(
                                                                    context,
                                                                    20),
                                                            fontFamily:
                                                                'Metropolis2')),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 90, left: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: Dimensions.heightCalc(
                                                      context, 40),
                                                  width: Dimensions.widthCalc(
                                                      context, 100),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black87)),
                                                  child: Center(
                                                    child: Text('L',
                                                        style: TextStyle(
                                                            fontSize: Dimensions
                                                                .heightCalc(
                                                                    context,
                                                                    20),
                                                            fontFamily:
                                                                'Metropolis2')),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: Dimensions.widthCalc(
                                                      context, 15),
                                                ),
                                                Container(
                                                  height: Dimensions.heightCalc(
                                                      context, 40),
                                                  width: Dimensions.widthCalc(
                                                      context, 100),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black87)),
                                                  child: Center(
                                                    child: Text('XL',
                                                        style: TextStyle(
                                                            fontSize: Dimensions
                                                                .heightCalc(
                                                                    context,
                                                                    20),
                                                            fontFamily:
                                                                'Metropolis2')),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 10, right: 10),
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Row(
                                              children: [
                                                Text('Size info',
                                                    style: TextStyle(
                                                        fontSize: Dimensions
                                                            .heightCalc(
                                                                context, 18),
                                                        fontFamily:
                                                            'Metropolis2')),
                                                SizedBox(
                                                  width: Dimensions.widthCalc(
                                                      context, 200),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      showModalBottomSheet(
                                                        context: context,
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.vertical(
                                                                    top: Radius
                                                                        .circular(
                                                                            25))),
                                                        builder: (context) {
                                                          return Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                  top: 50,
                                                                ),
                                                                child: Text(
                                                                  'Select size',
                                                                  style: TextStyle(
                                                                      fontSize: Dimensions.heightCalc(
                                                                          context,
                                                                          24),
                                                                      fontFamily:
                                                                          'Metropolis'),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 20,
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Stack(
                                                                    children: [
                                                                      Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height: Dimensions.heightCalc(
                                                                            context,
                                                                            150),
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                20,
                                                                            left:
                                                                                10),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              height: Dimensions.heightCalc(context, 40),
                                                                              width: Dimensions.widthCalc(context, 100),
                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black87)),
                                                                              child: Center(
                                                                                child: Text('XS', style: TextStyle(fontSize: Dimensions.heightCalc(context, 20), fontFamily: 'Metropolis2')),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: Dimensions.widthCalc(context, 15),
                                                                            ),
                                                                            Container(
                                                                              height: Dimensions.heightCalc(context, 40),
                                                                              width: Dimensions.widthCalc(context, 100),
                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black87)),
                                                                              child: Center(
                                                                                child: Text('S', style: TextStyle(fontSize: Dimensions.heightCalc(context, 20), fontFamily: 'Metropolis2')),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: Dimensions.widthCalc(context, 15),
                                                                            ),
                                                                            Container(
                                                                              height: Dimensions.heightCalc(context, 40),
                                                                              width: Dimensions.widthCalc(context, 100),
                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black87)),
                                                                              child: Center(
                                                                                child: Text('M', style: TextStyle(fontSize: Dimensions.heightCalc(context, 20), fontFamily: 'Metropolis2')),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                90,
                                                                            left:
                                                                                10),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              height: Dimensions.heightCalc(context, 40),
                                                                              width: Dimensions.widthCalc(context, 100),
                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black87)),
                                                                              child: Center(
                                                                                child: Text('L', style: TextStyle(fontSize: Dimensions.heightCalc(context, 20), fontFamily: 'Metropolis2')),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: Dimensions.widthCalc(context, 15),
                                                                            ),
                                                                            Container(
                                                                              height: Dimensions.heightCalc(context, 40),
                                                                              width: Dimensions.widthCalc(context, 100),
                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black87)),
                                                                              child: Center(
                                                                                child: Text('XL', style: TextStyle(fontSize: Dimensions.heightCalc(context, 20), fontFamily: 'Metropolis2')),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ]),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 20,
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child:
                                                                    Container(
                                                                  height: 50,
                                                                  width: double
                                                                      .infinity,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      color: Colors
                                                                          .white),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            20),
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                            'Size info',
                                                                            style:
                                                                                TextStyle(fontSize: Dimensions.heightCalc(context, 18), fontFamily: 'Metropolis2')),
                                                                        SizedBox(
                                                                          width: Dimensions.widthCalc(
                                                                              context,
                                                                              200),
                                                                        ),
                                                                        IconButton(
                                                                            onPressed:
                                                                                () {},
                                                                            icon:
                                                                                const Icon(Icons.arrow_right))
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 48,
                                                                width: 343,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              10),
                                                                  child: CustomButton(
                                                                      text: 'ADD TO CART',
                                                                      onPressed: () {
                                                                        // context.read<BagProvider>().cartPage(
                                                                        //     images.toString(),
                                                                        //     color,
                                                                        //     size,
                                                                        //     price,
                                                                        //     context);
                                                                      }),
                                                                ),
                                                              )
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: const Icon(
                                                        Icons.arrow_right))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 58,
                                        width: 340,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: CustomButton(
                                              text: 'ADD TO CART',
                                              onPressed: () {}),
                                        ),
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            icon: const Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 10),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: Dimensions.heightCalc(context, 40),
                    width: Dimensions.widthCalc(context, 130),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Black',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 20),
                                  fontFamily: 'Metropolis2')),
                        ),
                        SizedBox(
                          width: Dimensions.widthCalc(context, 1),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                      width: Dimensions.widthCalc(context, 30),
                      height: Dimensions.heightCalc(context, 30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(2, 3),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: Text(
                    'H&M',
                    style: TextStyle(
                        fontSize: Dimensions.heightCalc(context, 24),
                        fontFamily: 'Metropolis'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 190),
                  child: Text(
                    '\$19.99',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: Dimensions.heightCalc(context, 24)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 185),
              child: Text(
                'Short black dress',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 16),
                    fontFamily: 'Metropolis2',
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 5),
              child: Row(
                children: [
                  Icon(Icons.star,
                      color: const Color(0xffFFBA49),
                      size: Dimensions.heightCalc(context, 18)),
                  Icon(Icons.star,
                      color: const Color(0xffFFBA49),
                      size: Dimensions.heightCalc(context, 18)),
                  Icon(Icons.star,
                      color: const Color(0xffFFBA49),
                      size: Dimensions.heightCalc(context, 18)),
                  Icon(Icons.star,
                      color: const Color(0xffFFBA49),
                      size: Dimensions.heightCalc(context, 18)),
                  Icon(Icons.star,
                      color: const Color(0xffFFBA49),
                      size: Dimensions.heightCalc(context, 18)),
                  Text(
                    '(10)',
                    style: TextStyle(
                        fontFamily: 'Metropolis2',
                        fontSize: Dimensions.heightCalc(context, 12)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Text(
                'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                style: TextStyle(
                    fontFamily: 'Metropolis2',
                    fontSize: Dimensions.heightCalc(context, 14)),
              ),
            ),
            SizedBox(
                width: Dimensions.widthCalc(context, 310),
                height: Dimensions.heightCalc(context, 70),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CustomButton(text: 'ADD TO CART', onPressed: () {}),
                ))
          ],
        ),
      ),
    );
  }
}
