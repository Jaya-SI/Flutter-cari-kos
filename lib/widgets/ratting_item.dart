import 'package:flutter/material.dart';

class RattingItem extends StatelessWidget {
  final int? index;
  final int? ratting;

  RattingItem({
    this.index,
    this.ratting,
  });
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index! <= ratting!
          ? 'assets/images/Icon_star.png'
          : 'assets/images/Icon_star_solid.png',
      width: 15,
      height: 15,
    );
  }
}
