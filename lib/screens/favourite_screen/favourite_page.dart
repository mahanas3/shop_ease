import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 150),
              child: Text('Favorites',
                  style: TextStyle(
                      fontSize: Dimensions.heightCalc(context, 34),
                      fontFamily: 'Metropolis')),
            ),
            SizedBox(
              height: Dimensions.heightCalc(context, 20),
            ),
            GridView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: context.watch<FavouriteProvider>().favourites.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 7.0,
                    mainAxisExtent: 240),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 20, right: 10),
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120, top: 10),
                                    child: InkWell(
                                        onTap: () {},
                                        child: const Icon(Icons.close,
                                            color: Colors.grey)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 120, left: 100),
                                    child: Container(
                                      height:
                                          Dimensions.heightCalc(context, 40),
                                      width: Dimensions.widthCalc(context, 40),
                                      decoration: BoxDecoration(
                                        color: const Color(0xffDB3022),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(2, 3),
                                          ),
                                        ],
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                            CupertinoIcons.bag_fill,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
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
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
