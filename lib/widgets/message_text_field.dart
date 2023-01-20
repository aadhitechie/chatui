import 'package:flutter/material.dart';

class MessageTextField extends StatelessWidget {
  const MessageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  suffixIconColor: Colors.grey,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Message...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.zero.copyWith(left: 5)),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cloud_upload_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.gif_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attach_money_outlined),
          )
        ],
      ),
    );
  }
}
