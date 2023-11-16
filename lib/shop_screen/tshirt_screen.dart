import 'package:flutter/material.dart';

class Tshirt extends StatefulWidget {
  const Tshirt({super.key});

  @override
  State<Tshirt> createState() => _TshirtState();
}

class _TshirtState extends State<Tshirt> {
  @override
  Widget build(BuildContext context) {
    List tshirt = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMgG_Mw5i9wGoWWeBluGiSBTE2rO2pqRSHKg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGEwbuhWdwtBnImcrK073uC7gjMZdz2cwx8A&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxZMx5-Tfim74QuaPftUuNnebKY0KYZcKGCZJzGzQ3j8bN0F-jYMQtUNxRyMZ9NvRTL2k&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlSxMQWjuGxYbZproyZnYafaDRCV_0f-KXRw&usqp=CAU'
    ];

    return GridView.count(
      childAspectRatio: 0.68, crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xffDB3022),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text('20%',
                         style: TextStyle(
                             color: Colors.white,
                             fontFamily: 'Metropolis',
                             fontSize: 20)),
                   ),
                ],
              ),
            ],
          ),
        ),
      ],
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Container(padding: const EdgeInsets.all(8),
      //             decoration: BoxDecoration(
      //                 color: const Color(0xffDB3022),
      //                 borderRadius: BorderRadius.circular(20)),
      //             child: const Text('20%',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontFamily: 'Metropolis',
      //                     fontSize: 20)),
      //           ),
      //           const Icon(Icons.favorite_border,color: Colors.black87,)
      //
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
