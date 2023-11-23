import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';
import '../../provider/home_provider.dart';

class NewCollection extends StatefulWidget {
  const NewCollection({Key? key}) : super(key: key);

  @override
  State<NewCollection> createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    context.read<HomeProvider>().newItems(context);
                  },
                  child: Container(
                    height: Dimensions.heightCalc(context, 384),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWI4oSLe-dqMAz_SfWC1cgNCyIADIZAWX0kA&usqp=CAU',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 320, left: 60),
                  child: Text(
                    'New collection',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: Dimensions.heightCalc(context, 36),
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Stack(children: [
                    Container(
                      height: Dimensions.heightCalc(context, 410),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6ryvh8DEGw7FLSLRRME60Pg8o0CrrpCLPfw&usqp=CAU',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 170, left: 20),
                        child: InkWell(
                          onTap: () {
                            context.read<HomeProvider>().mensHoodies(context);
                          },
                          child: Text(
                            'Men’s',
                            style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: Dimensions.heightCalc(context, 34),
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'hoodies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimensions.heightCalc(context, 34),
                              fontFamily: 'Metropolis'),
                        ),
                      )
                    ])
                  ]),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<HomeProvider>().summerSale(context);
                        },
                        child: Container(
                          height: Dimensions.heightCalc(context, 200),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 60, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Summer',
                                  style: TextStyle(
                                    color: const Color(0xffDB3022),
                                    fontFamily: 'Metropolis',
                                    fontSize:
                                        Dimensions.heightCalc(context, 34),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, right: 70),
                                  child: Text(
                                    'sale',
                                    style: TextStyle(
                                      color: const Color(0xffDB3022),
                                      fontFamily: 'Metropolis',
                                      fontSize:
                                          Dimensions.heightCalc(context, 34),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Stack(children: [
                        InkWell(
                          onTap: () {
                            context.read<HomeProvider>().blackDress(context);
                          },
                          child: Container(
                            height: Dimensions.heightCalc(context, 210),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhRXMUzftK8u_jDviKRdFIC9aeaExuvWIVSA&usqp=CAU',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 20),
                          child: Text(
                            'Black',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: Dimensions.heightCalc(context, 34),
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
