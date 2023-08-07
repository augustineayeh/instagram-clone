// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/story.dart';

class StoryWidget extends StatelessWidget {
  final Story story;
  final int index;
  const StoryWidget({
    Key? key,
    required this.story,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          width: 90,
          height: 90,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(story.imageUrl), fit: BoxFit.cover),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xffBF328E), width: 3)),
        ),
        Text(story.username)
      ],
    );
  }
}
