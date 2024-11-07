//import 'dart:ffi';

import 'package:yes_no_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {

  final Message message;
  const MyMessage({
    super.key,
    required this.message
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFF00FFFF),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
          child: Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: const TextStyle(color: Colors.black),),
          ),
        ),
        const SizedBox(height: 5,)
      ],
    );
  }
}