import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screens/chat_view.dart';

class UserChatTile extends StatelessWidget {
  final Map<String, dynamic> data;
  const UserChatTile({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final hasUnreadMessage = data['unreadCount'] != 0;
    return ListTile(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ChatView(),
        ),
      ),
      leading: _buildLeading(hasUnreadMessage),
      title: _buildTitle(context),
      subtitle: Text(
        data['lastMessage'],
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  String _formateDate(String date) {
    return DateFormat.yMd().format(DateTime.parse(date));
  }

  Row _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            data['name'],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                _formateDate(data['timestamp']),
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            )
          ],
        )
      ],
    );
  }

  Row _buildLeading(bool hasUnreadMessage) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        hasUnreadMessage
            ? const SizedBox(
                width: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5,
                ),
              )
            : const SizedBox(
                width: 20,
              ),
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(data['image']),
        ),
      ],
    );
  }
}
