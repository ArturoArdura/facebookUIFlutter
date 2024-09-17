import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

  final double profileSize;
  final String asset;

  const Avatar({
    Key? key, 
    required this.profileSize, 
    required this.asset
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: profileSize,
      height: profileSize,


      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        image: DecorationImage(image: AssetImage(asset))
      ),
    );
  }
}