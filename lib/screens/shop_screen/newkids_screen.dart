import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';

import '../../utilities/dimensions.dart';


class KidsNew extends StatefulWidget {
  const KidsNew({super.key});

  @override
  State<KidsNew> createState() => _KidsNewState();
}

class _KidsNewState extends State<KidsNew> {
  @override
  Widget build(BuildContext context) {
    List title = ['Under \$ 20', 'Under \$ 30', 'Under \$ 20', 'Under \$50'];

    List images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHHiBXP2EFEJBmQCbzub576PGDIUwsLcMZ-Q&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1zd5RearTQofwMY-oy65HiYaCZ4zkePLasA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR__5qRQjzmYW7wKfGR0XM9_UvmVyoBuBgXDg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnp5CxuLUf3mo-HP3j0mtcUCTY7QmSQjSqtA&usqp=CAU'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 50, top: 30),
          child: Text('NewItems',
              style: TextStyle(
                  fontFamily: 'salina',
                  color: Colors.black87,
                  fontSize: Dimensions.heightCalc(context, 30))),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 30, right: 20),
            child: Icon(
              CupertinoIcons.sort_down,
              color: Colors.black87,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Card(
                    elevation: 5,
                    margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      height: Dimensions.heightCalc(context, 160),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(1),
                            blurRadius: 10,
                            offset: const Offset(
                                3, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(title[index],
                                    style: TextStyle(
                                        fontFamily: 'salinaa',
                                        fontSize: Dimensions.heightCalc(
                                            context, 25))),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Row(
                                    children: [
                                      CustomButton(
                                          text: 'Add Cart', onPressed: () {}),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      CustomButton(
                                          text: 'Buy', onPressed: () {})
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: Dimensions.widthCalc(context, 40),
                            ),
                            Container(
                              width: Dimensions.widthCalc(context, 100),
                              height: Dimensions.heightCalc(context, 100),
                              child: Image(image: NetworkImage(images[index])),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 1,
                );
              },
              itemCount: title.length,
            ),
          )
        ],
      ),
    );
  }
}
