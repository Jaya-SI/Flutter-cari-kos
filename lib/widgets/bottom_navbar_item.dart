import 'package:flutter/cupertino.dart';

class BottomNavbarItem extends StatelessWidget {
  String imageUrl;
  bool active;

  BottomNavbarItem({
    required this.imageUrl,
    required this.active,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
          color: active ? Color(0xff7F74EB) : Color(0xff989BA1),
        ),
        Spacer(),
        active
            ? Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xff7F74EB),
                  borderRadius: BorderRadius.circular(1000),
                ),
              )
            : Container(),
      ],
    );
  }
}
