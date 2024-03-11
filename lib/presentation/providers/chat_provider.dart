import 'package:flutter/material.dart';
import 'package:yes_no_chat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola mi vida', fromWho: FromWho.me),
    Message(text: 'Saca para los tacos!!!!', fromWho: FromWho.me),
    Message(text: 'Nel pastel me debes una feria codo', fromWho: FromWho.hers),
    Message(text: 'Pero te pongo pa las cocas', fromWho: FromWho.hers),
    Message(text: 'Pero tu aflojas pa la gasolina?', fromWho: FromWho.me),
    Message(text: 'No bb', fromWho: FromWho.hers)
  ];

   void addMessage(Message message) {
    messageList.add(message);
    notifyListeners();
  }
}
