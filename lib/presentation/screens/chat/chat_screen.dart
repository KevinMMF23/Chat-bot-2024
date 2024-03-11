import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_chat/domain/entities/message.dart';
import 'package:yes_no_chat/presentation/providers/chat_provider.dart';
import 'package:yes_no_chat/presentation/shared/message_field_box.dart';
import 'package:yes_no_chat/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_chat/presentation/widgets/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.chilango.com/2018/07/aleman-eclipse.jpg'),
          ),
        ),
        title: const Text("Aleman"),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Consumer<ChatProvider>(
                  builder: (context, chatProvider, child) {
                    return ListView.builder(
                      itemCount: chatProvider.messageList.length,
                      itemBuilder: (context, index) {
                        final message = chatProvider.messageList[index];
                        return (message.fromWho == FromWho.hers)
                            ? HerMessageBubble(text: message.text) // Pasar el texto del mensaje
                            : MyMessageBubble(message: message.text);
                      },
                    );
                  },
                ),
              ),
              const MessageFieldBox()
            ],
          ),
        ),
      ),
    );
  }
}
