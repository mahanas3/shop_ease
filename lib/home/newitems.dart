import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewItems extends StatefulWidget {
  const NewItems({super.key});

  @override
  State<NewItems> createState() => _NewItemsState();
}

class _NewItemsState extends State<NewItems> {
  @override
  Widget build(BuildContext context) {
    List title = ['Under \$ 20', 'Under \$ 30', 'Under \$ 20', 'Under \$50'];

    List images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv3bXG5_Hm15jMsdx35PG_Q3d8NYCGrAESAg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRenV0nupPbfSPyMpz0waPhBo0U8EvU2U5fwQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR__5qRQjzmYW7wKfGR0XM9_UvmVyoBuBgXDg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO2KFgLL8EqDo6ojOjBBpzi5xzWTmJ11PxeVZ_bPqh8XkiUIAUb5Sibq0Zygyy4gkZqXc&usqp=CAU'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(right: 50, top: 30),
          child: Text('NewItems',
              style: TextStyle(
                  fontFamily: 'salina', color: Colors.black87, fontSize: 30)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 30, right: 20),
            child: Icon(
              CupertinoIcons.sort_down,
              color: Colors.black87,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Card(
                    elevation: 5,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(1),
                            blurRadius: 10,
                            offset: const Offset(
                                3, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            Text(title[index],
                                style: const TextStyle(
                                    fontFamily: 'salinaa', fontSize: 25)),
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              child: Image(image: NetworkImage(images[index])),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 1,
                );
              },
              itemCount: title.length,
            ),
          )
        ],
      ),
    );
  }
}
