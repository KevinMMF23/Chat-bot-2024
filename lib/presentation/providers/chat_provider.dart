import 'package:flutter/material.dart';
import 'package:yes_no_chat/config/theme/helpers/get_yes_no_answer.dart';
import 'package:yes_no_chat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController Chatcontroller = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  List<Message> messageList = [
    Message(text: 'hola mi vida', fromWho: FromWho.me),
    Message(text: 'Saca para los tacos!!!!', fromWho: FromWho.me),
    Message(
        text: 'nel pastel me debes una feria codo',
        fromWho: FromWho.hers,
        imageUrl:
            "https://yesno.wtf/assets/no/14-cb78bf7104f848794808d61b9cd83eba.gif"),
    Message(
        text: 'pero te pongo las cocas',
        fromWho: FromWho.hers,
        imageUrl:
            "https://yesno.wtf/assets/no/14-cb78bf7104f848794808d61b9cd83eba.gif"),
    Message(text: 'pero tu aflojas para la gasolina?', fromWho: FromWho.me),
    Message(
        text: 'no bb!',
        fromWho: FromWho.hers,
        imageUrl:
            'https://yesno.wtf/assets/no/13-755222c98795431aa2e7d453ab1e75a1.gif'),
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    await
    notifyListeners();
    moveScrollToBotton();
  }

 Future<void> moveScrollToBotton()async {
  await Furure.delayed(const Duration(milliseconds: 100));
    Chatcontroller.animateTo(Chatcontroller.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}