import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/favourite_provider.dart';
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x000000ff),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100,left: 20),
            child: Text('Favorites',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 34),
                    fontFamily: 'Metropolis')),
          ),
          GridView.builder(
              itemCount: context.watch<FavouriteProvider>().favourites.length,
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
                                        .read<FavouriteProvider>()
                                        .favourites[index]['image']),
                                    fit: BoxFit.fill,
                                    height: Dimensions.heightCalc(context, 150),
                                    width: Dimensions.widthCalc(context, 140),
                                  ),
                                ])),
                            SizedBox(
                              height: Dimensions.heightCalc(context, 10),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Text(
                                  context
                                      .read<FavouriteProvider>()
                                      .favourites[index]['name'],
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 15),
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Text(
                                  context
                                      .read<FavouriteProvider>()
                                      .favourites[index]['price'],
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 15),
                                      fontFamily: 'Metropolis'),
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
        ],
      ),
    );
  }
}
