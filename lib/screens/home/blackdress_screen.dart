import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

import '../../provider/favourite_provider.dart';

class BlackDresses extends StatefulWidget {
  const BlackDresses({super.key});

  @override
  State<BlackDresses> createState() => _BlackDressesState();
}

class _BlackDressesState extends State<BlackDresses> {
  List blackDress = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCOn_mwuUt-hls8ZjeeBf8NyJZGUticLzP4A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbF23RK1Qvw_nabeoe6ja9Aizcg3CCe1d7A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbt4NTrqbXnsPdCTJQvrL-0FmzLXjozovPc7FpjHZIxKA9dKJgNmSPFw79iIyviUGpnho&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0x000000ff),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Black Dresses',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: Dimensions.heightCalc(context, 24),
                    color: Colors.black87)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: MasonryGridView.builder(
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.all(4),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(children: [
                    Image(image: NetworkImage(blackDress[index])),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 135,
                      ),
                      child: Container(
                        width: Dimensions.widthCalc(context, 80),
                        height: Dimensions.heightCalc(context, 40),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: InkWell(
                          onTap: () {
                            // context
                            //     .read<FavouriteProvider>()
                            //     .blackFavourite(blackDress[index], context);
                          },
                          child: const Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: Color(0xffDB3022),
                          ),
                        ),
                      ),
                    )
                  ])),
            ),
            itemCount: blackDress.length,
          ),
        ));
  }
}
