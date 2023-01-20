import 'package:chat_ui/screens/chat_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(),
      home: const ChatListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
