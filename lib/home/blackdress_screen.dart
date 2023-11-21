import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BlackDresses extends StatefulWidget {
  const BlackDresses({super.key});

  @override
  State<BlackDresses> createState() => _BlackDressesState();
}

class _BlackDressesState extends State<BlackDresses> {
  List blackDress = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCOn_mwuUt-hls8ZjeeBf8NyJZGUticLzP4A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbF23RK1Qvw_nabeoe6ja9Aizcg3CCe1d7A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbt4NTrqbXnsPdCTJQvrL-0FmzLXjozovPc7FpjHZIxKA9dKJgNmSPFw79iIyviUGpnho&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWFRJw-fXzjv123mcPPzniwsYPhxgMIjCSEQ&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MasonryGridView.builder(
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.all(4),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(image: NetworkImage(blackDress[index]))),
      ),
      itemCount: blackDress.length,
    ));
  }
}
