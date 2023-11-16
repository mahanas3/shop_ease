import 'package:flutter/material.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class MensPage extends StatefulWidget {
  const MensPage({super.key});

  @override
  State<MensPage> createState() => _MensPageState();
}

class _MensPageState extends State<MensPage> {
  @override
  Widget build(BuildContext context) {
    List menDressName = ['New', 'Hoodies', 'Footwear', 'Watch'];

    List mensImages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqTS_sjzrFCOfuZpjp7n4UksZC1Dybrhaxw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoGW3SGvZ-23rL9KZvI2WZtJGakEiA2I5FDw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-9falxasiXfO-jTTc0FwaESvUJ-tP7etB9Q&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbSPTvxKTL18uWYnbvV_-333ZLS8P6GFjNbw&usqp=CAU'
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
                              child: Text(menDressName[index],
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
                                        image: NetworkImage(mensImages[index]),
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
                itemCount: mensImages.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
