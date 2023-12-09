import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/profile_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class Profile extends StatefulWidget {
  Profile({super.key, required this.id});

  int? id;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
    //context.read<ProfileProvider>().getUser(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x000000ff),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 130, top: 20),
            child: Text(
              'My profile',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 34),
                  fontFamily: 'Metropolis'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Row(
              children: [
                Container(
                  height: Dimensions.heightCalc(context, 80),
                  width: Dimensions.widthCalc(context, 80),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile.png'))),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 22),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text(
                        'User',
                        style: TextStyle(
                            fontSize: Dimensions.heightCalc(context, 22),
                            fontFamily: 'Metropolis'),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'user@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Metropolis2',
                          fontSize: Dimensions.heightCalc(context, 18),
                          color: const Color(0xff9B9B9B)),
                    )
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              context.read<ProfileProvider>().myOrder(context);
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 20),
                    child: Text(
                      'My orders',
                      style: TextStyle(
                          fontSize: Dimensions.heightCalc(context, 18),
                          fontFamily: 'metropolis'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140, top: 5),
                    child: Text(
                      'Already have 12 orders',
                      style: TextStyle(
                        fontFamily: 'Metropolis2',
                        fontSize: Dimensions.heightCalc(context, 15),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.read<ProfileProvider>().shippingAddress(context);
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 120, top: 30),
                    child: Text(
                      'Shipping addresses',
                      style: TextStyle(fontSize: 18, fontFamily: 'metropolis'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 230, top: 5),
                    child: Text(
                      '3 dresses',
                      style: TextStyle(
                        fontFamily: 'Metropolis2',
                        fontSize: Dimensions.heightCalc(context, 15),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.read<ProfileProvider>().paymentMethods(context);
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 130, top: 30),
                    child: Text(
                      'Payment methods',
                      style: TextStyle(fontSize: 18, fontFamily: 'metropolis'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 225, top: 5),
                    child: Text(
                      'Visa  **34',
                      style: TextStyle(
                        fontFamily: 'Metropolis2',
                        fontSize: Dimensions.heightCalc(context, 15),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 180, top: 30),
                  child: Text(
                    'PromoCodes',
                    style: TextStyle(fontSize: 18, fontFamily: 'Metropolis'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100, top: 5),
                  child: Text(
                    'You have special promocodes',
                    style: TextStyle(
                      fontFamily: 'Metropolis2',
                      fontSize: Dimensions.heightCalc(context, 15),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 190, top: 30),
                  child: Text(
                    'My reviews',
                    style: TextStyle(fontSize: 18, fontFamily: 'metropolis'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 165, top: 5),
                  child: Text(
                    'Reviews for 4 items',
                    style: TextStyle(
                      fontFamily: 'Metropolis2',
                      fontSize: Dimensions.heightCalc(context, 15),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              context.read<ProfileProvider>().settings(context);
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 220, top: 30),
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 18, fontFamily: 'Metropolis'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 136, top: 5),
                    child: Text(
                      'Notifications, password',
                      style: TextStyle(
                        fontFamily: 'Metropolis2',
                        fontSize: Dimensions.heightCalc(context, 15),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
