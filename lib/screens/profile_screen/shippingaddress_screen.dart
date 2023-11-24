import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/profile_provider.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    List name = ['Jane Doe', 'Jane Doe', 'Jane Doe'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Shipping Addresses',
            style: TextStyle(fontFamily: 'Metropolis', color: Colors.black87)),
      ),
      body: Consumer<ProfileProvider>(builder:
          (BuildContext context, ProfileProvider value, Widget? child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Card(
                              child: Container(
                                  color: const Color(0xffFFFFFF),
                                  height: Dimensions.heightCalc(context, 230),
                                  width: Dimensions.widthCalc(context, 320),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 120, left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(name[index],
                                                style: TextStyle(
                                                    fontFamily: 'Metropolis',
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 18))),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 140),
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Edit',
                                                    style: TextStyle(
                                                        color: const Color(
                                                            0xffDB3022),
                                                        fontFamily:
                                                            'Metropolis',
                                                        fontSize: Dimensions
                                                            .heightCalc(
                                                                context, 18)),
                                                  )),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '3 NewBridge CourtChino Hills, CA 91709, United States',
                                          style: TextStyle(
                                              fontSize: Dimensions.heightCalc(
                                                  context, 17),
                                              fontFamily: 'Metropolis2'),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100, left: 26),
                            child: Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  activeColor: Colors.black87,
                                  value: value.checkBoxValues[index],
                                  onChanged: (bool_) {
                                    value.toggleCheckbox(index);
                                  },
                                ),
                                const Text(
                                  'Use as the shipping address',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis2', fontSize: 17),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 5,
                  );
                },
                itemCount: name.length,
              ),
              SizedBox(
                height: Dimensions.heightCalc(context, 15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 240),
                child: Container(
                  height: Dimensions.heightCalc(context, 40),
                  width: Dimensions.widthCalc(context, 40),
                  child: FloatingActionButton(
                    backgroundColor: Colors.black87,
                    onPressed: () {
                      context
                          .read<ProfileProvider>()
                          .addShippingAddress(context);
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
