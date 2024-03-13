import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_chat/domain/entities/message.dart';
import 'package:yes_no_chat/presentation/providers/chat_provider.dart';
import 'package:yes_no_chat/presentation/shared/message_field_box.dart';
import 'package:yes_no_chat/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_chat/presentation/widgets/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
        body: const _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  controller: chatProvider.chatController,
                  itemCount: chatProvider.messageList.length,
                  itemBuilder: ((context, index) {
                    return (chatProvider.messageList[index].fromWho ==
                            FromWho.hers)
                        ? HerMessageBubble(
                            message: chatProvider.messageList[index].text,
                            imageUrl: chatProvider.messageList[index].imageUrl,
                          )
                        : MyMessageBubble(
                            message: chatProvider.messageList[index].text);
                  }))),
          MessageFieldBox(
            onValue: (value) => chatProvider.sendMessage(value),
          )
        ],
      ),
    ));
  }
}
