

import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final bool showBadge;

  const CircleButton({
    super.key, 
    required this.color, 
    required this.iconData,
    this.showBadge = false,
    });


  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
              height: 36,
              width: 36,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child:  Icon(iconData,
                color: Colors.white,
                size: 16,
              )

            ),
            if (showBadge) 
            Positioned(
              right: 0,
              top: -2,
              child: Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                border: Border.all(
                  width: 3,
                  color: Colors.white
                )
              ),
            ),
          )
      ]
    );
  }

}