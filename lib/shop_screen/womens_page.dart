import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/screen_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class WomenScreen extends StatefulWidget {
  const WomenScreen({super.key});

  @override
  State<WomenScreen> createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  @override
  Widget build(BuildContext context) {
    List names = ['Tops', 'Geans', 'Footwear', 'Accessories'];

    List salesImages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRue4A2ArMsKVE9f2iL1VF-e28VNGI11IKXZA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScDAAtLChrrns2Czzvr4qODx5NmR_fJFbA3w&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8y2mJlhaZouUJ4hYIgE4Z5QKd-f4zK0vK9w&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoIFBJR3IL4_CxyxrQMGg1vskbdR3eWRjYWw&usqp=CAU'
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
                              child: Text(names[index],
                                  style: const TextStyle(
                                      fontFamily: 'Metropolis', fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: InkWell(
                                onTap: () {
                                  context.read<ScreenProvider>().tops(context);
                                },
                                child: Container(
                                  height: 90,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              NetworkImage(salesImages[index]),
                                          fit: BoxFit.fill)),
                                ),
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
                itemCount: salesImages.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
