

import 'package:flutter/material.dart';
import 'package:prueba_world/facebook_ui.dart/mini_widgets/circle_button.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          QuickButton(texto: 'Gallery', colorFondo: const Color.fromARGB(255, 188, 216, 189), colorTexto: const Color.fromARGB(255, 34, 139, 38), colorBoton: Colors.green, icono: Icons.arrow_back_ios_sharp,),
          SizedBox(width: 20,),
          QuickButton(texto: 'Tag Friends', colorFondo: Colors.blue.shade100, colorTexto: Colors.blueAccent, colorBoton: Colors.blue, icono: Icons.baby_changing_station,),
          SizedBox(width: 20,),
          QuickButton(texto: 'Live', colorFondo: Colors.red.shade50, colorTexto: Colors.red, colorBoton: Colors.red.shade200, icono: Icons.man_4_rounded,),
        ],
      ),
    );
  }
}

class QuickButton extends StatelessWidget {

  final String texto;
  final Color colorFondo;
  final Color colorTexto;
  final Color colorBoton;
  final IconData icono;

  const QuickButton({
    super.key, 
    required this.texto, 
    required this.colorFondo, 
    required this.colorTexto, 
    required this.colorBoton, 
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorFondo,
        borderRadius: BorderRadius.circular(30)
      ),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleButton(color: colorBoton, iconData: icono),
          SizedBox(width: 10,),
          Text(texto, style: TextStyle(color: colorTexto),),
          SizedBox(width: 20,),

      
        ],
        
      ),
    );
  }
}