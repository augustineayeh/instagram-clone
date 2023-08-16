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
          width: 90,
          height: 90,
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            border: Border.fromBorderSide(
              BorderSide(
                style: BorderStyle.solid,
                color: Colors.transparent,
                width: 3,
              ),
            ),
            gradient: LinearGradient(
              colors: [Colors.red, Colors.purple, Colors.yellow],
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              story.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(story.username),
      ],
    );
  }
}
