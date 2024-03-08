import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});


  @override
  Widget build(BuildContext context) {
    final TextEditingController=TextEditingController();
    final enfoque = FocusNode();


    
  final UnderlineInputBorder OutlineInputBorder= UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20));
    
  final decoration = InputDecoration(
      enabledBorder: OutlineInputBorder,
      focusedBorder: OutlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_and_archive_outlined),
        onPressed: (){
          final textValue = textcontroller.value.text;
          print("impresion del boton de envio: $textValue");
          textcontroler.clear();
        },
      ));
      return TextFormField(
            final enfoque = FocusNode();

        controller: TextController,
      onFieldSubmitted: (value){
        print("es el submit valor: $value");
      textcontroler.clear();
      enfoque.clear();

      },
      decoration: decoration,
      );
  }
  
UnderlineInputBorder: OutlineInputBorder()=> UnderlineInputBorder(
  borderSide: const BorderSide(color: Colors.transparent),
  borderRadius: BorderRadius.circular(20));

InputDecoration setDecoration({required inputBorder})=> InputDecoration(
  enabledBorder: inputBorder,
  focusedBorder: InputBorder,
  filled:  true,
  suffixIcon: IconButton(
    
  )

)
}