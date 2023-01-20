import 'package:chat_ui/screens/sample_chat_map.dart';
import 'package:chat_ui/widgets/message_card.dart';
import 'package:chat_ui/widgets/message_text_field.dart';
import 'package:chat_ui/widgets/my_message_card.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/med/men/73.jpg"),
            ),
            Text(
              "John Smith",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.grey[700],
                  ),
            ),
          ],
        ),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final messageData = sampleMessages[index];
                return messageData['is_user'] as bool
                    ? MyMessageCard(data: messageData)
                    : MessageCard(data: messageData);
              },
              itemCount: sampleMessages.length,
            ),
          ),
          const Align(
              alignment: Alignment.bottomCenter, child: MessageTextField())
        ],
      ),
    );
  }
}
