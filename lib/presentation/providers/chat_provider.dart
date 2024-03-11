import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yes_no_chat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> _messageList = [
    Message(text: 'Que tranza carnal, soy el rapero mxAleman', fromWho: FromWho.hers),
  ];

  List<Message> get messageList => _messageList;

  void addMessage(Message message) {
    _messageList.add(message);
    
    if (message.fromWho == FromWho.me) {
      final response = generateResponse(message.text);
      if (response != null) {
        _messageList.add(response);
      }
    }

    notifyListeners();
  }

  Message? generateResponse(String text) {
    final random = Random();
    switch (text.toLowerCase()) {
      case 'q tranza':
        return Message(text: 'que once', fromWho: FromWho.hers);
      case 'ya me voy':
        return Message(text: 'arre carnal cuidate, éxito en tu carrera musical', fromWho: FromWho.hers);
      case 'como andas?':
        final responses = [
          'Bien carnal, cansado por las giras',
          'algo triste viejo',
          'Emocionado por los nuevos conciertossss'
        ];
        final index = random.nextInt(responses.length);
        return Message(text: responses[index], fromWho: FromWho.hers);
      default:
        return null;
    }
  }
}
