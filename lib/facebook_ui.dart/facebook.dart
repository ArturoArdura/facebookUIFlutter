

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba_world/facebook_ui.dart/mini_widgets/quick_actions.dart';
import 'package:prueba_world/facebook_ui.dart/mini_widgets/stories.dart';
import 'package:prueba_world/facebook_ui.dart/mini_widgets/what_mind.dart';
import 'mini_widgets/circle_button.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blue,
          width: 150,
        ),
        actions: const [
          CircleButton(
            color: Colors.grey, 
            iconData: Icons.accessibility
            ),
          SizedBox(width: 18,),
          CircleButton(
            color: Colors.red, 
            iconData: Icons.abc
            ),
          SizedBox(width: 18,),
          CircleButton(
            color: Colors.blueGrey, 
            iconData: Icons.add_alarm,
            showBadge: true,
            ),
          SizedBox(width: 18,),
          CircleButton(
            color: Colors.blue, 
            iconData: Icons.key
            ),
          SizedBox(width: 18,),
        ]
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15).copyWith(top: 15),
        
        children: const [
          WhatsonYourMind(),
          SizedBox(height: 25,),
          QuickActions(),
          SizedBox(height: 25,),          
          Stories()
        ],
      ),
    );
  }
  
}

