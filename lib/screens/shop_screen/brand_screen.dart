import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/customsearchbutton.dart';
import 'package:shop_ease/provider/shop_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class Brand extends StatefulWidget {
  const Brand({super.key});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  List brandNames = [
    'adidas',
    'adidas Originals',
    'Blend',
    'Boutique Moschino',
    'Champion',
    'Diesel',
    'Jack & Jones',
    'Naf Naf',
    'Red Valentino',
    's.Oliver'
  ];

  List<bool> isChecked = List.filled(10, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 70, top: 18),
          child: Text(
            'Brand',
            style: TextStyle(
                fontSize: Dimensions.heightCalc(context, 30),
                fontFamily: 'Metropolis',
                color: Colors.black87),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: CustomSearch(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: Dimensions.heightCalc(context, 40),
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Row(
                      children: [
                        Text(brandNames[index],
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 18),
                                fontFamily: 'Metropolis2')),
                        Consumer<ShopProvider>(builder:
                            (BuildContext context, value, Widget? child) {
                          return Checkbox(
                              value: isChecked[index],
                              onChanged: (bool? value) {
                                isChecked[index] = value!;
                              });
                        })
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: Dimensions.heightCalc(context, 10),
                );
              },
              itemCount: brandNames.length,
            )
          ],
        ),
      ),
    );
  }
}
