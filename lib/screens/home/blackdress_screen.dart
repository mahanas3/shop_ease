import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/favourite_provider.dart';
import 'package:shop_ease/provider/shop_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class BlackDress extends StatefulWidget {
  const BlackDress({super.key});

  @override
  State<BlackDress> createState() => _BlackDressState();
}

class _BlackDressState extends State<BlackDress> {
  @override
  Widget build(BuildContext context) {
    List blackDress = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCOn_mwuUt-hls8ZjeeBf8NyJZGUticLzP4A&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbF23RK1Qvw_nabeoe6ja9Aizcg3CCe1d7A&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbt4NTrqbXnsPdCTJQvrL-0FmzLXjozovPc7FpjHZIxKA9dKJgNmSPFw79iIyviUGpnho&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU'
    ];

    List name = ['Kurthi', 'Gown', 'Top', 'Top', 'Top', 'Kurthi'];

    List price = ['9\$', '20\$', '50\$', '25\$', '25\$', '25\$'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Blackishh..!!',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 25),
                  color: Colors.black)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: blackDress.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0, // spacing between rows
              crossAxisSpacing: 15.0,
              mainAxisExtent: 240),
          itemBuilder: (BuildContext context, int index) {
            return Stack(children: [
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
                        InkWell(
                          onTap: () {
                            context.read<ShopProvider>().tshirtDetails(context);
                          },
                          child: Image(
                            image: NetworkImage(blackDress[index]),
                            fit: BoxFit.fill,
                            height: Dimensions.heightCalc(context, 150),
                            width: Dimensions.widthCalc(context, 150),
                          ),
                        ),
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Color(0xffFFBA49)),
                          Icon(Icons.star, color: Color(0xffFFBA49)),
                          Icon(Icons.star, color: Color(0xffFFBA49)),
                          Icon(Icons.star, color: Color(0xffFFBA49)),
                          Icon(Icons.star, color: Color(0xffFFBA49)),
                          Text(
                            '(10)',
                            style: TextStyle(fontFamily: 'Metropolis2'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          name[index],
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: Dimensions.heightCalc(context, 16)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align( alignment: Alignment.centerLeft,
                        child: Text(
                          price[index],
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: Dimensions.heightCalc(context, 16)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 110),
                child: Container(
                  width: Dimensions.widthCalc(context, 40),
                  height: Dimensions.heightCalc(context, 40),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      context.read<FavouriteProvider>().favourite(
                          blackDress[index],
                          name[index],
                          price[index],
                          context);
                    },
                    child: const Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Color(0xffDB3022),
                    ),
                  ),
                ),
              )
            ]);
          },
        ),
      ),
    );
  }
}
