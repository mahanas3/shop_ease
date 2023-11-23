import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class WomenNew extends StatefulWidget {
  const WomenNew({super.key});

  @override
  State<WomenNew> createState() => _WomenNewState();
}

class _WomenNewState extends State<WomenNew> {
  @override
  Widget build(BuildContext context) {
    List title = ['Under \$ 20', 'Under \$ 30', 'Under \$ 20', 'Under \$50'];

    List images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRacVbLx4ZotPxz0XhW-bvJUjVBE6JrFR_PHg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFZOBJ2-aFKuSd2QDrCqMrRG8W4L8GEG3nig&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMDORGb0Y8lTps4Aqs1d_51re5wJ6k_o_kWw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkJBPd1cXmyCw2j2l7uduvf5FlltP8SmgVqQ&usqp=CAU'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        title:  Padding(
          padding: const EdgeInsets.only(right: 50, top: 30),
          child: Text('NewItems',
              style: TextStyle(
                  fontFamily: 'salina', color: Colors.black87, fontSize: Dimensions.heightCalc(context, 30))),
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
                                    style:  TextStyle(
                                        fontFamily: 'salinaa', fontSize: Dimensions.heightCalc(context, 25))),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: CustomButton(
                                          text: 'Add Cart', onPressed: () {}),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: CustomButton(
                                          text: 'Buy', onPressed: () {}),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: Dimensions.widthCalc(context, 40),
                            ),
                            Container(
                              width: Dimensions.widthCalc(context, 100),
                              height: Dimensions.heightCalc(context, 120),
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
