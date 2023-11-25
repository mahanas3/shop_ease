import 'package:flutter/material.dart';
import 'package:shop_ease/custom_widget/customsearchbutton.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class Brand extends StatefulWidget {
  const Brand({super.key});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 70,top: 18),
          child: Text(
            'Brand',
            style: TextStyle(
                fontSize: Dimensions.heightCalc(context, 30),
                fontFamily: 'Metropolis',
                color: Colors.black87),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: CustomSearch(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }
}
