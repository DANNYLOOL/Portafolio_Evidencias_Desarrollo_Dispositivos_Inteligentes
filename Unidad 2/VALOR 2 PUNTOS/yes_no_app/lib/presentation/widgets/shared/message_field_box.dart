import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox ({super.key,
  required this.onValue
  });

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focus = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoration = InputDecoration(
      hintText: 'Escribe tu mensaje, debe terminar en "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: (){
          final textValue = textController.value.text;
          
          textController.clear();
          onValue(textValue);

        }, 
        icon:const Icon(Icons.send_rounded)
        )
    );

    return TextFormField(
      focusNode: focus,

      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        
        textController.clear();
        focus.requestFocus();
        onValue(value);
      },
      onTapOutside: (event){
        focus.unfocus();
      }
    );
  }
}