import 'package:flutter/material.dart';

class CustomFollowNotification extends StatefulWidget {
  const CustomFollowNotification({super.key});

  @override
  State<CustomFollowNotification> createState() =>
      _CustomFollowNotificationState();
}

class _CustomFollowNotificationState extends State<CustomFollowNotification> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/images/...'),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Aliefhafids',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Now add to cart your product',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        // ----------------- notif baris sebelah kanan
        Expanded(
          child: Container()),
      ],
    );
  }
}
