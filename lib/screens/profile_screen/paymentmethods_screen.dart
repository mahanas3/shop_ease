import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_textfield.dart';
import 'package:shop_ease/provider/profile_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x000000ff),
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text('Payment methods',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 25),
                  color: Colors.black87)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 150),
            child: Text(
              'Your payment cards',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 18),
                  fontFamily: 'Metropolis'),
            ),
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Stack(children: [
              Container(
                height: Dimensions.heightCalc(context, 250),
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ91JfJxd0-hqojdzVyagoQUVZIIR5f_cwPrten6RK_gs712pZWMwCpYWx9K1GiitdfaNc&usqp=CAU'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 40),
                width: Dimensions.widthCalc(context, 60),
                child: const Image(
                  image: AssetImage('assets/images/chip.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Text(
                  '* * * *  * * * *  * * * *  3947',
                  style: TextStyle(
                      fontSize: Dimensions.heightCalc(context, 24),
                      fontFamily: 'Metropolis',
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 20),
                child: Row(
                  children: [
                    Text(
                      'Card Holder Name',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.heightCalc(context, 14),
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      width: Dimensions.heightCalc(context, 90),
                    ),
                    Text(
                      'Expiry Date',
                      style: TextStyle(
                          fontSize: Dimensions.heightCalc(context, 14),
                          color: Colors.white,
                          fontFamily: 'Metropolis'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160, left: 20),
                child: Row(
                  children: [
                    Text(
                      'Jennyfer Doe',
                      style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: Dimensions.heightCalc(context, 20),
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: Dimensions.widthCalc(context, 85),
                    ),
                    Text(
                      '05/23',
                      style: TextStyle(
                          fontFamily: 'Metropolis',
                          color: Colors.white,
                          fontSize: Dimensions.heightCalc(context, 20)),
                    )
                  ],
                ),
              ),
            ]),
          ),
          Consumer<ProfileProvider>(
              builder: (BuildContext context, profileProvider, Widget? child) {
            return Row(
              children: [
                Checkbox(
                  activeColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  value: profileProvider.isChecked,
                  onChanged: (value) {
                    profileProvider.toggleCheckbox1();
                  },
                ),
                Text(
                  'Use as default payment method',
                  style: TextStyle(
                      fontFamily: 'Metropolis2',
                      fontSize: Dimensions.heightCalc(context, 16)),
                )
              ],
            );
          }),
          Padding(
            padding: const EdgeInsets.only(left: 290),
            child: Container(
              width: Dimensions.widthCalc(context, 50),
              height: Dimensions.heightCalc(context, 50),
              child: FloatingActionButton(
                elevation: 3,
                backgroundColor: Colors.black87,
                onPressed: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        children: [
                          Text(
                            'Add new card',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis'),
                          ),
                          CustomTextfield(
                              text1: 'Name on card',
                              text2: 'Name on card',
                              controller: namecontroller)
                        ],
                      );
                    },
                  );
                },
                child: const Icon(Icons.add),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//local$cloud storage
