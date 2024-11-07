import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessage extends StatelessWidget {

  final Message message;

  const HerMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 83, 79, 181),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: const TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
          _Image(image: message.imageUrl!),
        const SizedBox(height: 20)
      ],
    );
  }

}

class _Image extends StatelessWidget{
  final String image;

  const _Image({required this.image});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        image,
      width : size.width * 0.5,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          width: size.width * 0.5,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text('Recibiendo imagen...')
        );
      },
      )
    );
  }

}