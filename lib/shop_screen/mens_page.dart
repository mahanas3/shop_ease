import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/screen_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class MensPage extends StatefulWidget {
  const MensPage({super.key});

  @override
  State<MensPage> createState() => _MensPageState();
}

class _MensPageState extends State<MensPage> {
  @override
  Widget build(BuildContext context) {
    List names = ['Shirt', 'Hoodies', 'Footwear', 'Watch'];

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
                ),
                InkWell(
                  onTap: () {
                    context.read<ScreenProvider>().mensNew(context);
                  },
                  child: const Image(
                    image: AssetImage('assets/images/neww.png'),
                    height: 100,
                    width: 100,
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
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: InkWell(
                        onTap: () {
                          context.read<ScreenProvider>().tops(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Image(
                                  image: NetworkImage(mensImages[index]),
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      names[index],
                                      style: const TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20),
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
                itemCount: mensImages.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
