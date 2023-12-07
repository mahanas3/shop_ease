import 'package:flutter/material.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 39),
          child: Text('Checkout',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 25),
                  fontFamily: 'Metropolis',color: Colors.black)),
        ),
      ),
    );
  }
}
