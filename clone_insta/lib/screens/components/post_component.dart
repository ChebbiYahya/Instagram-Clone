import 'package:flutter/material.dart';

import '../../models/post_model.dart';

class PostComponent extends StatelessWidget {
  const PostComponent({super.key, required this.post});
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),

      // height: 350,
      //width: 200,
      //color: Colors.brown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //HEADER POST
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: const AssetImage("assets/story.jpg"),
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage(post.profilImg),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                post.name,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
          ),
          const SizedBox(height: 10),
          //IMAGE ASSETS
          Image.asset(
            post.postImg,
          ),
          const SizedBox(height: 5),
          //FOOTER POST
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat_bubble_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.label_outline),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: "Liked by "),
                      TextSpan(
                          text: "Alex_rein ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "and "),
                      TextSpan(
                          text: "Others ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: post.titleComment,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: post.descrComment),
                    ],
                  ),
                ),
                const Text(
                  "View all 12 comments",
                  style: TextStyle(color: Colors.black38),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
