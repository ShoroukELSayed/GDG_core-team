import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/assets.dart';
import '../widgets/custom_text.dart';
import '../widgets/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        actions: const [
          CustomText(
            text: 'Clear all',
            fontSize: 13,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Stack(
              children: [
                NotificationItem(
                  icon: SvgPicture.asset(Assets.resourceImagesVerifiedIcon),
                  title:
                      'We know that — for children AND\nadults — learning is most effective when it is',
                ),
                const Positioned(
                  right: 0,
                  top: 40,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            const NotificationItem(
              icon: Icon(
                Icons.event_available,
                color: Color.fromARGB(96, 9, 28, 63),
              ),
              title:
                  'The future of professional learning is \nimmersive, communal experiences for ',
              color: Color.fromARGB(205, 9, 28, 63),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            const NotificationItem(
              icon: Icon(
                Icons.notifications_none,
                color: Color.fromARGB(96, 9, 28, 63),
              ),
              title:
                  'With this in mind, Global Online Academy \ncreated the Blended Learning Design ',
              color: Color.fromARGB(205, 9, 28, 63),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            const NotificationItem(
              icon: Icon(
                Icons.notifications_none,
                color: Color.fromARGB(96, 9, 28, 63),
              ),
              title:
                  'Technology should serve, not drive, \npedagogy. Schools often discuss ',
              color: Color.fromARGB(205, 9, 28, 63),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            const NotificationItem(
              icon: Icon(
                Icons.notifications_none,
                color: Color.fromARGB(96, 9, 28, 63),
              ),
              title:
                  'Peer learning works. By building robust \npersonal learning communities both  ',
              color: Color.fromARGB(205, 9, 28, 63),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
