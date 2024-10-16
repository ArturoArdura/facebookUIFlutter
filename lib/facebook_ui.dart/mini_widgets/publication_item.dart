import 'package:flutter/material.dart';
import 'package:prueba_world/models/publication.dart';

class PublicationItem extends StatelessWidget{
  const PublicationItem({Key? key, required this.publication}) : super(key: key); 
  final Publication publication;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey,
    );
  }
  
}
