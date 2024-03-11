import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_chat/domain/entities/message.dart';
import 'package:yes_no_chat/presentation/providers/chat_provider.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        hintText: 'Escribe un mensaje...',
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            _sendMessage(context, textController.text);
            textController.clear();
          },
        ),
      ),
    );
  }

  void _sendMessage(BuildContext context, String message) {
    if (message.isNotEmpty) {
      final chatProvider = Provider.of<ChatProvider>(context, listen: false);
      chatProvider.addMessage(Message(text: message, fromWho: FromWho.me));
    }
  }
}
