

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prueba_world/facebook_ui.dart/mini_widgets/profile_photo.dart';

class WhatsonYourMind extends StatelessWidget {
  const WhatsonYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Avatar(profileSize: 50, asset: 'assets/users/1.jpg'),
        SizedBox(width: 20,),
        Flexible(
          child: Text(
            "What's on your mind, Arturo?",
            style: TextStyle(
              color: Colors.grey
            ),
            ),
        )
        
      ],
    );
  }
}
