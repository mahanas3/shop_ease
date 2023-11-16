import 'package:flutter/material.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class KidsPage extends StatefulWidget {
  const KidsPage({super.key});

  @override
  State<KidsPage> createState() => _KidsPageState();
}

class _KidsPageState extends State<KidsPage> {
  @override
  Widget build(BuildContext context) {
    List kidsDress = ['New', 'Gown', 'Footwear', 'Accessories'];

    List kidsImages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNdkA9YpSnuVOIn3WVmkxg04Vhv15RLiNBYw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTstM9W7rqQxaJU8u1-Di34btjiKmjd98x0bw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp96R0zKYKpV79KJv-D4hGkMtP_OGw237w2Q&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCF3AndIq6Objg5avOd_1436wX-6xiQzgsdw&usqp=CAU'
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 100),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffDB3022),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 60),
                  child: Column(
                    children: [
                      Text(
                        'SUMMER SALES',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Metropolis',
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Up to 50% off',
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 14,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                        height: Dimensions.heightCalc(context, 100),
                        width: 343,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(kidsDress[index],
                                  style: const TextStyle(
                                      fontFamily: 'Metropolis', fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Container(
                                height: 90,
                                width: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(kidsImages[index]),
                                        fit: BoxFit.fill)),
                              ),
                            )
                          ],
                        )),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
                  height: 10,
                ),
                itemCount: kidsImages.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
