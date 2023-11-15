import 'package:flutter/material.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';

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
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 230,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS06DXAkO0H5b001O_lU64TaLnLFwE8ub7Wgg&usqp=CAU'),
                      fit: BoxFit.fill)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 180, left: 20),
              child: Text(
                'Street clothes',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 34,
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
                    padding: const EdgeInsets.only(left: 10,),
                    child: Stack(children: [
                      Container(
                        width: 148,
                        height: 390,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(saleImages[index])),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 300),
                          child: Column(
                            children: [
                              Row(
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
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  'Dorothy Perkins',
                                  style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    color: Color(0xff9B9B9B),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Evening Dress',
                                style: TextStyle(
                                    fontFamily: 'Metropolis', fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text('\$15'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('\$15')
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
                            width: 30,
                            height: 30,
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
                            child: const Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 40,left: 20),
                        child: Text('Discounts',style: TextStyle(fontFamily: 'Metropolis',fontSize: 20),),
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
