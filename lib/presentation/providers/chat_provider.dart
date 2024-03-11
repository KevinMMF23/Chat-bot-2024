import 'package:flutter/material.dart';
import 'package:yes_no_chat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> _messageList = [
    Message(text: 'Hola mi vida', fromWho: FromWho.me),
    Message(text: '¡Saca para los tacos!!!!', fromWho: FromWho.me),
    Message(text: 'Nel pastel me debes una feria codo', fromWho: FromWho.hers),
    Message(text: 'Pero te pongo las cocas', fromWho: FromWho.hers),
  ];

  List<Message> get messageList => _messageList;

  void addMessage(Message message) {
    _messageList.add(message);
    notifyListeners();
  }
}
