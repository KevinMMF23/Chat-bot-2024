import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_chat/domain/entities/message.dart';
import 'package:yes_no_chat/presentation/providers/chat_provider.dart';

class HerMessageBubble extends StatelessWidget {
  final String text;

  const HerMessageBubble({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              text, // Mostrar el texto real del mensaje
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/14-cb78bf7104f848794808d61b9cd83eba.gif",
        width: size.width * 0.7,
        height: size.height * 0.2,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
            ? child
            : Container(
                width: size.width * 0.7,
                height: size.height * 0.2,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text("Cargando imagen..."),
              ),
      ),
    );
  }
}
