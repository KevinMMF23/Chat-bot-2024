import 'package:flutter/material.dart';
import 'package:yes_no_chat/presentation/screens/chat/widgets/my_message_bubble.dart';
import 'package:yes_no_chat/presentation/screens/chat/widgets/her_message_bubble.dart';

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
              'https://www.unotv.com/uploads/2022/07/dharius-091037.jpg',
            ),
          ),
        ),
        title: const Text("Dharius"),
        centerTitle: false,
      ),
      body: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child:ListView.builder(
                itemCount: 101,
                itemBuilder: ((context,index){
                  return(index % == 0)
                  ? const MyMessageBubble()
                  : const HerMessageBubble();
                })
              ),
            ),
            const Text("Hola"),
            const Text("Hola2"),
          ],
        ),
      ),
    );
  }
}
