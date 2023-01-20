import 'package:chat_ui/screens/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GroupChatTile extends StatelessWidget {
  final Map<String, dynamic> data;
  const GroupChatTile({
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
      dense: false,
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

  _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            data['members'][0]['name'] + ',' + data['members'][1]['name'],
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

  _buildLeading(bool hasUnreadMessage) {
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

        Align(
          widthFactor: .7,
          heightFactor: .5,
          alignment: Alignment.bottomLeft,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(data['members'][1]['image']),
          ),
        ),
        Align(
          widthFactor: .3,
          heightFactor: .8,
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(data['members'][0]['image']),
          ),
        ),

        // Stack(
        //   clipBehavior: Clip.antiAlias,
        //   children: [
        //     Positioned(
        //       child: CircleAvatar(
        //         radius: 20,
        //         backgroundImage: NetworkImage(data['members'][0]['image']),
        //       ),
        //     ),
        //     Positioned(
        //       bottom: -10,
        //       right: -10,
        //       child: CircleAvatar(
        //         radius: 20,
        //         backgroundImage: NetworkImage(data['members'][1]['image']),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
