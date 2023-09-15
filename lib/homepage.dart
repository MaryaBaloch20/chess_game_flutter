import 'package:chess_game/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

import 'components/square.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8 * 8,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemBuilder: ((context, index) {
          return Square(isWhite: isWhite(index));
        }),
      ),
    );
  }
}
