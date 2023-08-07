// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';

class PostWidget extends StatefulWidget {
  final Post post;

  final int index;
  const PostWidget({
    Key? key,
    required this.post,
    required this.index,
  }) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.post.profilePicUrl),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(widget.post.username),
              ),
              Image.asset(
                'assets/icons/verified.png',
                color: Colors.blue,
                height: 15,
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      InkWell(
        onDoubleTap: () {
          setState(() {
            liked = !liked;
          });
        },
        child: Container(
            height: screenWidth,
            width: screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.post.mediaUrl)))),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        liked = !liked;
                      });
                    },
                    icon: liked
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 35,
                          )
                        : const Icon(Icons.favorite_border, size: 35)),
                Image.asset(
                  'assets/icons/comment.png',
                  height: 30,
                ),
                const SizedBox(
                  width: 6,
                ),
                Image.asset(
                  'assets/icons/send-to-dm.png',
                  height: 28,
                )
              ],
            ),
            Image.asset(
              'assets/icons/bookmark.png',
              height: 28,
            )
          ],
        ),
      ),
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Liked by ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          const TextSpan(
                              text: 'augyog',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' and ${widget.post.likes} others'),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: '${widget.post.username} ',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: widget.post.caption,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ])))
    ]);
  }
}
