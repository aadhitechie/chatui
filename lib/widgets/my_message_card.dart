// import 'package:flutter/material.dart';

// class MyMessageCard extends StatelessWidget {
//   final Map<String, dynamic> data;
//   const MyMessageCard({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     final isTextMessage = data['message_type'] == 'text';
//     return Align(
//       alignment: Alignment.centerRight,
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//             maxWidth: MediaQuery.of(context).size.width - 70, minWidth: 50),
//         child: isTextMessage
//             ? Card(
//                 elevation: 0,
//                 color: Colors.green.shade400,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(18),
//                 ),
//                 margin: const EdgeInsets.all(8).copyWith(left: 12),
//                 child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       data['message'],
//                       style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                             color: Colors.white,
//                           ),
//                     )),
//               )
//             : Card(
//                 elevation: 0,
//                 color: Colors.green.shade400,
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

import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class MyMessageCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const MyMessageCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final isTextMessage = data['message_type'] == 'text';
    return isTextMessage
        ? BubbleSpecialThree(
            text: data['message'],
            color: Colors.green,
            textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                ),
          )
        : BubbleNormalImage(
            id: '',
            image: Image.network(
              data['image_url'],
            ),
          );
  }
}
