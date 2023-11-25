import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/customsizebox.dart';
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
                      FloatingActionButton(
                          backgroundColor: Colors.black87, onPressed: () {}),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      FloatingActionButton(
                          backgroundColor: Colors.grey, onPressed: () {}),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      FloatingActionButton(
                          backgroundColor: const Color(0xffB82222),
                          onPressed: () {}),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      FloatingActionButton(
                          backgroundColor: const Color(0xffBEA9A9),
                          onPressed: () {}),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      FloatingActionButton(
                          backgroundColor: const Color(0xff151867),
                          onPressed: () {}),
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
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Stack(children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: Dimensions.heightCalc(context, 120),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    children: [
                      Container(
                        width: Dimensions.widthCalc(context, 50),
                        height: Dimensions.heightCalc(context, 50),
                        child: CustomBoxSize(
                          text: 'XS',
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      Container(
                        width: Dimensions.widthCalc(context, 50),
                        height: Dimensions.heightCalc(context, 50),
                        child: CustomBoxSize(
                          text: 'S',
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      Container(
                        width: Dimensions.widthCalc(context, 50),
                        height: Dimensions.heightCalc(context, 50),
                        child: CustomBoxSize(
                          text: 'M',
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      Container(
                        width: Dimensions.widthCalc(context, 50),
                        height: Dimensions.heightCalc(context, 50),
                        child: CustomBoxSize(
                          text: 'L',
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      Container(
                        width: Dimensions.widthCalc(context, 50),
                        height: Dimensions.heightCalc(context, 50),
                        child: CustomBoxSize(
                          text: 'XL',
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
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
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  height: Dimensions.heightCalc(context, 200),
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        child: CustomBoxSize(text: 'All')),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        child: CustomBoxSize(text: 'Women')),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(color: Colors.red,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 100),
                        child: const Text('All'))
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
