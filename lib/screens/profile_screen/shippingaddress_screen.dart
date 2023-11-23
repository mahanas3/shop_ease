import 'package:flutter/material.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    List name = ['Jane Doe', 'Jane Doe', 'Jane Doe'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 6,
        title: const Text('Shipping Addresses',
            style: TextStyle(fontFamily: 'Metropolis', color: Colors.black87)),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Card(
                child: Container(
                  height: Dimensions.heightCalc(context, 180),
                  width: Dimensions.widthCalc(context, 320),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 120, left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(name[index],
                                style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    fontSize:
                                        Dimensions.heightCalc(context, 18))),
                            Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Edit',
                                    style: TextStyle(
                                        color: Color(0xffDB3022),
                                        fontFamily: 'Metropolis',
                                        fontSize: 18),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 5,
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
