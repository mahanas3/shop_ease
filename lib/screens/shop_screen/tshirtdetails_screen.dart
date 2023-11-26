import 'package:flutter/material.dart';
import '../../utilities/dimensions.dart';

class TshirtDetails extends StatefulWidget {
  const TshirtDetails({Key? key}) : super(key: key);

  @override
  State<TshirtDetails> createState() => _TshirtDetailsState();
}

class _TshirtDetailsState extends State<TshirtDetails> {
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVWVMbzEUzdHUfQv6MOSu5XBcduV9XNZsbLSJZpJ12fQyOPjERRXoljAx1Ar1vZtxe1G4&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3QF-axGlBALLyi2CtE-rFDohLinAPgUwKlN6voyCSX96_mVU74A2ph3vTR7V00GMn7iQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdcviXNMLRL8oY9Z-zZt5B7gP8ABm4MesIaSxc8wIwheCi_KFkV2_Wdh8NfLvQgbCNI5M&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text('Tshirts',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  color: Colors.black87,
                  fontSize: Dimensions.heightCalc(context, 25))),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: Dimensions.heightCalc(context, 380),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            (images[index]),
                          ),
                          fit: BoxFit.fill)),
                  width: Dimensions.widthCalc(context, 250),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: Dimensions.widthCalc(context, 5),
                );
              },
              itemCount: images.length,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Container(
                  height: Dimensions.heightCalc(context, 40),
                  width: Dimensions.widthCalc(context, 130),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Size',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis2')),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 11),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: Dimensions.widthCalc(context, 10),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: Dimensions.heightCalc(context, 40),
                  width: Dimensions.widthCalc(context, 130),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Black',
                            style: TextStyle(
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis2')),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 1),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
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
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
