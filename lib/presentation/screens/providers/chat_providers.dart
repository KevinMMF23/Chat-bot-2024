import 'package:flutter/material.dart';
import 'package:yes_no_chat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList= [;
  Message(text: "Hola crnal",Fromwho: Fromwho.me),
  Message(text: "saca pa los awachiles",Fromwho: Fromwho.me),
  Message(text: "nel me debes una feria",Fromwho: Fromwho.me),
  Message(text: "nel me debes una feria",Fromwho: Fromwho.me),
];

}