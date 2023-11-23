import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/provider/cart_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class StreetCloths extends StatefulWidget {
  const StreetCloths({super.key});

  @override
  State<StreetCloths> createState() => _StreetClothsState();
}

class _StreetClothsState extends State<StreetCloths> {
  @override
  Widget build(BuildContext context) {
    List saleImages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbIQBiLCxNCYR5ptbAMFsmOmQdfPk3b3t6Zw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk_tTozLCqPPQ5Hah7TmZKTwky6x1lA1kCSA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf43pNLYwfYBVkTTILlf2nh2GEZNPtQyV_sA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf43pNLYwfYBVkTTILlf2nh2GEZNPtQyV_sA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXBFe4xr3cbjelITJtYrFzWqvsH6pZf5EjFQ&usqp=CAU'
    ];

    List name = ['Dorothy Perkings', 'Salvar', 'kurthi', 'short', 'Shirt'];

    List price = ['16\$', '25\$', '25\$', '25\$', '50\$'];

    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: Dimensions.heightCalc(context, 230),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS06DXAkO0H5b001O_lU64TaLnLFwE8ub7Wgg&usqp=CAU'),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 20),
              child: Text(
                'Street clothes',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: Dimensions.heightCalc(context, 34),
                    color: Colors.white),
              ),
            )
          ]),
          const Padding(
            padding: EdgeInsets.only(right: 265, top: 20),
            child: Text(
              'Sale',
              style: TextStyle(fontFamily: 'Metropolis', fontSize: 34),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 210, top: 5),
            child: Text(
              'Super summer sale',
              style: TextStyle(
                  color: Color(0xff9B9B9B), fontFamily: 'Metropolis2'),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: saleImages.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Stack(children: [
                      Container(
                        width: Dimensions.widthCalc(context, 148),
                        height: Dimensions.heightCalc(context, 390),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(saleImages[index])),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 300),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFBA49),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFBA49),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFBA49),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFBA49),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFBA49),
                                  ),
                                  Text(
                                    '(10)',
                                    style: TextStyle(fontFamily: 'Metropolis2'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Align(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(
                                    name[index],
                                    style: const TextStyle(
                                      fontFamily: 'Metropolis',
                                      color: Color(0xff9B9B9B),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  'Evening Dress',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis', fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(price[index]),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text('\$15')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 110, left: 10),
                        child: CustomButton(text: '-20%', onPressed: () {}),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 120, left: 130),
                          child: Container(
                            width: Dimensions.widthCalc(context, 30),
                            height: Dimensions.heightCalc(context, 30),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: const Offset(2, 3),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: () {
                                context.read<CartProvider>().cartFavourite(
                                    saleImages[index],
                                    name[index],
                                    price[index],
                                    context);
                              },
                              child: const Icon(
                                Icons.favorite_border,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Text(
                          'Discounts',
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: Dimensions.heightCalc(context, 20)),
                        ),
                      )
                    ]));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
