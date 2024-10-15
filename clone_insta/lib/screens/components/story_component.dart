import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class StoryComponent extends StatelessWidget {
  const StoryComponent({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 37,
          backgroundImage: const AssetImage("assets/story.jpg"),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(user.profilImg),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          user.name,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        )
      ],
    );
  }
}
