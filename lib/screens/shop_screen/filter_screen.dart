import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/provider/shop_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x000000ff),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text('Filters',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 30),
                  fontFamily: 'Metropolis',
                  color: Colors.black87)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 200),
              child: Text('Price range',
                  style: TextStyle(
                      fontSize: Dimensions.heightCalc(context, 20),
                      fontFamily: 'Metropolis')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                height: Dimensions.heightCalc(context, 120),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            '\$${Provider.of<ShopProvider>(context).minValue.toStringAsFixed(0)}',
                            style: TextStyle(
                                fontFamily: 'Metropolis2',
                                fontSize: Dimensions.heightCalc(context, 18)),
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.widthCalc(context, 200),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 30),
                          child: Text(
                            '\$${Provider.of<ShopProvider>(context).maxValue.toStringAsFixed(0)}',
                            style: TextStyle(
                                fontFamily: 'Metropolis2',
                                fontSize: Dimensions.heightCalc(context, 18)),
                          ),
                        ),
                      ],
                    ),
                    Consumer<ShopProvider>(builder:
                        (BuildContext context, sliderValue, Widget? child) {
                      return RangeSlider(
                          values: RangeValues(
                              sliderValue.minValue, sliderValue.maxValue),
                          activeColor: const Color(0xffDB3022),
                          divisions: 10,
                          min: 0.0,
                          max: 200.0,
                          onChanged: (RangeValues values) {
                            sliderValue.setMinSliderValue(values.start);
                            sliderValue.setMaxSliderValue(values.end);
                          });
                    })
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 250),
              child: Text(
                'Colors',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 20),
                    fontFamily: 'metropolis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 120),
                  width: double.infinity,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Colors.black87, shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 5),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Color(0xffB82222), shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 5),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Color(0xffBEA9A9), shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 5),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Color(0xffE2BB8D), shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 5),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Color(0xff151867), shape: BoxShape.circle),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 260),
              child: Text(
                'Sizes',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: Dimensions.heightCalc(context, 20)),
              ),
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  height: Dimensions.heightCalc(context, 100),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      height: Dimensions.heightCalc(context, 40),
                      width: Dimensions.widthCalc(context, 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Center(
                        child: Text('XS',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: Dimensions.heightCalc(context, 40),
                      width: Dimensions.widthCalc(context, 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Center(
                        child: Text('S',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: Dimensions.heightCalc(context, 40),
                      width: Dimensions.widthCalc(context, 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Center(
                        child: Text('M',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: Dimensions.heightCalc(context, 40),
                      width: Dimensions.widthCalc(context, 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Center(
                        child: Text('L',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: Dimensions.heightCalc(context, 40),
                      width: Dimensions.widthCalc(context, 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Center(
                        child: Text('XL',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis')),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 220),
              child: Text(
                'Category',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: Dimensions.heightCalc(context, 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  height: Dimensions.heightCalc(context, 150),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black87)),
                        child: Center(
                          child: Text('All',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 20),
                                  fontFamily: 'Metropolis')),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 15),
                      ),
                      Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black87)),
                        child: Center(
                          child: Text('Women',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 20),
                                  fontFamily: 'Metropolis')),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 15),
                      ),
                      Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black87)),
                        child: Center(
                          child: Text('Men',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 20),
                                  fontFamily: 'Metropolis')),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black87)),
                        child: Center(
                          child: Text('Boys',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 20),
                                  fontFamily: 'Metropolis')),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 15),
                      ),
                      Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black87)),
                        child: Center(
                          child: Text('Girls',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 20),
                                  fontFamily: 'Metropolis')),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: Dimensions.heightCalc(context, 20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 100),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'Brand',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: Dimensions.heightCalc(context, 20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 50),
                  child: Text(
                    'adidas Originals, Jack & Jones, s.Oliver',
                    style: TextStyle(
                        fontSize: Dimensions.heightCalc(context, 16),
                        fontFamily: 'Metropolis2',
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300, top: 5),
                  child: IconButton(
                      onPressed: () {
                        context.read<ShopProvider>().brand(context);
                      },
                      icon: const Icon(Icons.arrow_forward_ios_outlined)),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  Container(
                    width: Dimensions.widthCalc(context, 160),
                    height: Dimensions.heightCalc(context, 36),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text('Discard',
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: Dimensions.heightCalc(context, 14))),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.widthCalc(context, 20),
                  ),
                  SizedBox(
                      width: Dimensions.widthCalc(context, 160),
                      height: Dimensions.heightCalc(context, 36),
                      child: CustomButton(text: 'Apply', onPressed: () {}))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
