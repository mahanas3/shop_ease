import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/provider/shop_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {

  @override
  Widget build(BuildContext context) {

    double userRating = 4.5;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 60),
              child: Text(
                'Rating&Reviews',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 34),
                    fontFamily: 'Metropolis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 150),
                  width: double.infinity,
                  decoration: const BoxDecoration(shape: BoxShape.rectangle),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: RatingSummary(
                        counter: 13,
                        average: 3.846,
                        showAverage: true,
                        counterFiveStars: 5,
                        counterFourStars: 4,
                        counterThreeStars: 2,
                        counterTwoStars: 1,
                        counterOneStars: 1,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
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
                Consumer<ShopProvider>(builder:
                    (BuildContext context, shopprovider, Widget? child) {
                  return Row(
                    children: [
                      Checkbox(
                          value: shopprovider.isChecked,
                          activeColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onChanged: (changedValue) {
                            context
                                .read<ShopProvider>()
                                .ratingCheckbox(changedValue!);
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
              padding: const EdgeInsets.only(right: 10),
              child: Stack(children: [
                Container(
                  height: Dimensions.heightCalc(context, 370),
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
                      padding: const EdgeInsets.only(top: 70, right: 140),
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
                              rating: userRating,
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
                      padding: const EdgeInsets.only(left: 250, top: 5),
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
            Padding(
              padding: const EdgeInsets.only(left: 128),
              child: Stack(children: [
                SizedBox(
                    height: Dimensions.heightCalc(context, 50),
                    width: Dimensions.widthCalc(context, 190),
                    child: CustomButton(
                        text: 'Write a review',
                        onPressed: () {
                          context.read<ShopProvider>().writeReviewButton(context);
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
    );
  }
}
