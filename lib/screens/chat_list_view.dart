import 'package:chat_ui/screens/sample_chat_map.dart';
import 'package:chat_ui/widgets/group_chat_tile.dart';
import 'package:chat_ui/widgets/user_chat_tile.dart';
import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        foregroundColor: Colors.grey,
        title: const Text('Conversations'),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: false,
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: sampleChatList.length,
              itemBuilder: (context, index) {
                final conversionList = sampleChatList[index];
                if (conversionList['isGroup'] == true) {
                  return GroupChatTile(
                    data: conversionList,
                  );
                }
                return UserChatTile(
                  data: conversionList,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
