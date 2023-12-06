import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/provider/favourite_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class Sleeveless extends StatefulWidget {
  const Sleeveless({super.key});

  @override
  State<Sleeveless> createState() => _SleevelessState();
}

class _SleevelessState extends State<Sleeveless> {
  @override
  Widget build(BuildContext context) {
    List<String> tshirtImages = [
      'assets/images/sleeveless.png',
      'assets/images/sleeveless.png',
      'assets/images/sleeveless.png',
      'assets/images/sleeveless.png',
    ];
    List name = ['Mango', 'Dorothi Perkings', 'Mango', 'Dorothi Perkings'];

    List price = ['9\$', '20\$', '50\$', '25\$'];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: tshirtImages.length,
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
                        Image(
                          image: AssetImage(tshirtImages[index]),
                          fit: BoxFit.fill,
                          height: Dimensions.heightCalc(context, 150),
                          width: Dimensions.widthCalc(context, 150),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomButton(text: '-20%', onPressed: () {}),
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
                          style:  TextStyle(
                              fontFamily: 'Metropolis', fontSize: Dimensions.heightCalc(context, 16)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 115),
                        child: Text(
                          '9' + '\$',
                          style:
                          TextStyle(fontFamily: 'Metropolis', fontSize: Dimensions.heightCalc(context, 16),
                          ),)
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 210, left: 120),
                child: Container(
                  width: Dimensions.widthCalc(context, 100),
                  height: Dimensions.heightCalc(context, 90),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      context.read<FavouriteProvider>().favourite(
                          tshirtImages[index], name[index], price[index],
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
