import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';
import '../../custom_widget/custom_button.dart';
import '../../provider/shop_provider.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({super.key});

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc22kzfOq_lSxgd84tOxqCHJv11JIGeI954A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc22kzfOq_lSxgd84tOxqCHJv11JIGeI954A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc22kzfOq_lSxgd84tOxqCHJv11JIGeI954A&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Rating and reviews',
            style: TextStyle(
                fontSize: Dimensions.heightCalc(context, 20),
                fontFamily: 'Metropolis',
                color: Colors.black87)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      '8 reviews',
                      style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: Dimensions.heightCalc(context, 24)),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.widthCalc(context, 75),
                  ),
                  Consumer<ShopProvider>(
                      builder: (BuildContext context, review, Widget? child) {
                    return Row(
                      children: [
                        Checkbox(
                            value: review.isCheckedd,
                            activeColor: Colors.black87,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onChanged: (changedValue) {
                              context
                                  .read<ShopProvider>()
                                  .writeReviews(changedValue!);
                            }),
                        Text(
                          'With photo',
                          style: TextStyle(
                              fontFamily: 'Metropolis2',
                              fontSize: Dimensions.heightCalc(context, 16)),
                        )
                      ],
                    );
                  }),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Stack(children: [
                  Container(
                    height: Dimensions.heightCalc(context, 500),
                    width: Dimensions.widthCalc(context, 350),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      height: Dimensions.heightCalc(context, 50),
                      width: Dimensions.widthCalc(context, 50),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIWNTiq9IDokwKAKD68rWcfvb_790X2MOxIA&usqp=CAU'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70, right: 118),
                        child: Text(
                          'Helene Moore',
                          style: TextStyle(
                              fontSize: Dimensions.heightCalc(context, 20),
                              fontFamily: 'Metropolis'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 10),
                        child: Row(
                          children: [
                            RatingBarIndicator(
                                rating: 4,
                                itemCount: 5,
                                itemSize: 25,
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Color(0xffFFBA49),
                                    )),
                            SizedBox(
                              width: Dimensions.widthCalc(context, 60),
                            ),
                            Text(
                              'June 5, 2019',
                              style: TextStyle(
                                  fontFamily: 'Metropolis2',
                                  color: Colors.grey,
                                  fontSize: Dimensions.heightCalc(context, 17)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 43),
                        child: Text(
                          'The dress is great! Very classy and comfortable. It fit perfectly! Im 57 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldnt recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                          style: TextStyle(
                              fontSize: Dimensions.heightCalc(context, 17),
                              fontFamily: 'Metropolis2'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 40),
                        child: Container(
                          height: Dimensions.heightCalc(context, 150),
                          width: double.infinity,
                          child: ListView.separated(
                            physics: const AlwaysScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: Dimensions.widthCalc(context, 130),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(images[index]),
                                        fit: BoxFit.fill)),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: Dimensions.widthCalc(context, 5),
                              );
                            },
                            itemCount: images.length,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250, top: 10),
                        child: Row(
                          children: [
                            Text(
                              'Helpful',
                              style: TextStyle(
                                  fontSize: Dimensions.heightCalc(context, 17),
                                  color: Colors.grey,
                                  fontFamily: 'Metropolis2'),
                            ),
                            SizedBox(
                              width: Dimensions.widthCalc(context, 5),
                            ),
                            const Icon(
                              Icons.thumb_up,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Stack(children: [
                  SizedBox(
                      height: Dimensions.heightCalc(context, 50),
                      width: Dimensions.widthCalc(context, 190),
                      child: CustomButton(
                          text: 'Write a review',
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25))),
                                builder: (BuildContext context) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Text(
                                          'What is you rate?',
                                          style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontSize: Dimensions.heightCalc(
                                                  context, 20)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: RatingBarIndicator(
                                          rating: 0,
                                          itemCount: 5,
                                          itemSize: 35,
                                          itemBuilder: (context, _) =>
                                              Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                // Set the border color
                                                width:
                                                    2.0, // Set the border width
                                              ),
                                              borderRadius: BorderRadius.circular(
                                                  8.0), // Set the border radius if you want rounded corners
                                            ),
                                            child: const Icon(
                                              Icons.star,
                                              color: Color(0x000000ff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          })),
                  const Padding(
                    padding: EdgeInsets.only(top: 13, left: 20),
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
