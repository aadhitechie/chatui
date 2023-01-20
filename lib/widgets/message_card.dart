// import 'package:flutter/material.dart';

// class MessageCard extends StatelessWidget {
//   final Map<String, dynamic> data;
//   const MessageCard({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     final isTextMessage = data['message_type'] == 'text';
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//             maxWidth: MediaQuery.of(context).size.width - 70, minWidth: 50),
//         child: isTextMessage
//             ? Card(
//                 elevation: 0,
//                 color: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(18),
//                 ),
//                 margin: const EdgeInsets.all(8).copyWith(left: 12),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     data['message'],
//                     style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                           color: Colors.black,
//                         ),
//                   ),
//                 ),
//               )
//             : Card(
//                 elevation: 0,
//                 color: Colors.grey.shade200,
//                 clipBehavior: Clip.antiAlias,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(18),
//                 ),
//                 margin: const EdgeInsets.all(8).copyWith(left: 12),
//                 child: Image.network(
//                   data['image_url'],
//                 ),
//               ),
//       ),
//     );
//   }
// }

import 'package:chat_bubbles/bubbles/bubble_normal_image.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const MessageCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final isTextMessage = data['message_type'] == 'text';
    return isTextMessage
        ? BubbleSpecialThree(
            text: data['message'],
            color: Colors.grey.shade400,
            textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                ),
            isSender: false,
          )
        : BubbleNormalImage(
            isSender: false,
            id: '',
            image: Image.network(
              data['image_url'],
            ),
          );
  }
}
