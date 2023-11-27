import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'My Bag',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 30)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 6),
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Image(
                                image: NetworkImage(''),
                                height: Dimensions.heightCalc(context, 90),
                                width: Dimensions.widthCalc(context, 120),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.widthCalc(context, 40),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                   '',
                                    style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        fontSize: Dimensions.heightCalc(
                                            context, 20)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
              },
              separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(
                height: 10,
              ),
              itemCount: salesImages.length,
            ),
          )
        ],
      ),
    );
  }
}
