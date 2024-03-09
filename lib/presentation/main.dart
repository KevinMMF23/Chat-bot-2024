import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yes_no_chat/config/theme/app_theme.dart';
import 'package:yes_no_chat/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ChatProvider()),
      ],
      child: MaterialApp(
      title: 'Yes  No App',
      debugShowCheckedModeBanner: false,
      theme: Apptheme(selectedColor: 4).theme(),
      home: const ChatScreen()),
    );
  }
}