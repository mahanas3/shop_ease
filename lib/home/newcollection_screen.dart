import 'package:flutter/material.dart';

class NewCollection extends StatefulWidget {
  const NewCollection({super.key});

  @override
  State<NewCollection> createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWI4oSLe-dqMAz_SfWC1cgNCyIADIZAWX0kA&usqp=CAU'),
                      fit: BoxFit.fill)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 340, left: 60),
              child: Text(
                'New collection',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 36,
                    color: Colors.white),
              ),
            )
          ]),
          Container(
            width: 187,
            height: 186,
            color: Colors.black87,
            child: const Padding(
              padding: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Text('Summer',
                      style: TextStyle(
                          color: Color(0xffDB3022),
                          fontFamily: 'Metropolis',
                          fontSize: 34)),
                  Padding(
                    padding: EdgeInsets.only(right: 70),
                    child: Text('sale',
                        style: TextStyle(
                            color: Color(0xffDB3022),
                            fontFamily: 'Metropolis',
                            fontSize: 34)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
