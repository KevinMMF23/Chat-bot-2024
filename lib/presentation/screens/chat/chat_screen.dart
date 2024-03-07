import 'package:flutter/material.dart';
import 'package:yes_no_chat/presentation/screens/chat/widgets/her_message.bubble.dart';
import 'package:yes_no_chat/presentation/screens/chat/widgets/my_message.bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(1),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://sm.ign.com/t/ign_latam/gallery/s/star-wars-/star-wars-the-black-series-darth-vader-premium-electronic-he_7vyy.600.jpg',
            ),
          ),
        ),
        title: const Text("Dart Vader"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(221, 107, 5, 99),
            Color.fromARGB(255, 117, 29, 151),
          ],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 40,
                  itemBuilder: ((context, index) {
                    return index % 2 == 0
                        ? MyMessageBubble()
                        : HerMessageBubble();
                  }),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}