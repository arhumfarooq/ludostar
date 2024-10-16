import 'package:flutter/material.dart';

class Ludo extends StatelessWidget {
  final Color color;
  final bool showIcon;
  final Color iconcolor;
  final bool show;
  final bool arrow;
  final bool curved;
  final bool straight;
  final bool up;
  final bool text;
  const Ludo(
      {super.key,
      this.color = Colors.white,
      this.showIcon = false,
      this.iconcolor = Colors.transparent,
      this.show = false,
      this.arrow = false,
      this.curved = false,
      this.straight = false,
      this.up = false,
      this.text = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showIcon)
              Icon(
                Icons.star,
                size: 20,
                color: iconcolor,
              ),
            if (show)
              Icon(
                Icons.arrow_forward,
                size: 19,
                color: iconcolor,
              ),
            if (arrow)
              Icon(
                Icons.arrow_back,
                size: 19,
                color: iconcolor,
              ),
            if (curved)
              Icon(
                Icons.arrow_downward,
                size: 20,
                color: iconcolor,
              ),
            if (straight)
              Icon(
                Icons.arrow_upward,
                size: 20,
                color: iconcolor,
              ),
            if (text)
              Text(
                'WIN',
                style: TextStyle(color: Colors.black, fontSize: 10),
              )
          ],
        ),
      ),
    );
  }
}
