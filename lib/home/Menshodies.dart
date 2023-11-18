import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/screen_provider.dart';

class MensHoodies extends StatefulWidget {
  const MensHoodies({Key? key}) : super(key: key);

  @override
  State<MensHoodies> createState() => _MensHoodiesState();
}

class _MensHoodiesState extends State<MensHoodies> {
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
                    context.read<ScreenProvider>().newItems(context);
                  },
                  child: Container(
                    height: 384,
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
                const Padding(
                  padding: EdgeInsets.only(top: 320, left: 60),
                  child: Text(
                    'New collection',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 36,
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
                      height: 410,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6ryvh8DEGw7FLSLRRME60Pg8o0CrrpCLPfw&usqp=CAU',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 170, left: 20),
                        child: Text(
                          'Men’s',
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 34,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'hoodies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
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
                          context.read<ScreenProvider>().summerSale(context);
                        },
                        child: Container(
                          height: 200,
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 60, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Summer',
                                  style: TextStyle(
                                    color: Color(0xffDB3022),
                                    fontFamily: 'Metropolis',
                                    fontSize: 34,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8, right: 70),
                                  child: Text(
                                    'sale',
                                    style: TextStyle(
                                      color: Color(0xffDB3022),
                                      fontFamily: 'Metropolis',
                                      fontSize: 34,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Stack(children: [
                        Container(
                          height: 210,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhRXMUzftK8u_jDviKRdFIC9aeaExuvWIVSA&usqp=CAU',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 80, left: 20),
                          child: Text(
                            'Black',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 34,
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
