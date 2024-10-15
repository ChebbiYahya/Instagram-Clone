import 'dart:async';
import 'package:clone_insta/screens/message_page.dart';
import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../models/user_model.dart';
import 'components/post_component.dart';
import 'components/story_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/insta_title.png",
          height: 60,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MessagePage(),
                ),
              );
            },
            icon: const Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Column(
          children: [
            //STORY
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listUsers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: StoryComponent(
                      user: listUsers[index],
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            Expanded(
                child: ListView.builder(
              itemCount: listPost.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return PostComponent(
                  post: listPost[index],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
