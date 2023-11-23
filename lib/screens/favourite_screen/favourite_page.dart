import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/cart_provider.dart';
import 'package:shop_ease/provider/auth_provider.dart';

import '../../utilities/dimensions.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: context.watch<CartProvider>().cart.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 7.0,
              mainAxisExtent: 240),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Stack(
                children: [
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            child: Stack(children: [
                              Image(
                                image: AssetImage(context
                                    .read<CartProvider>()
                                    .cart[index]['image']),
                                fit: BoxFit.fill,
                                height: Dimensions.heightCalc(context, 150),
                                width: Dimensions.widthCalc(context, 140),
                              ),
                            ])),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              context.read<CartProvider>().cart[index]
                              ['name'],
                              style: const TextStyle(
                                  fontSize: 15, fontFamily: 'Metropolis'),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              context.read<CartProvider>().cart[index]
                              ['price'],
                              style: const TextStyle(
                                  fontSize: 15, fontFamily: 'Metropolis'),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
