import 'package:flutter/material.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              // pinned: true,
              actions: [
                SizedBox(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icons/ig.jpg',
                      ),
                      SizedBox(
                        width: 85,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/icons/like.png',
                                height: 30,
                              ),
                              Image.asset('assets/icons/message.png',
                                  height: 30)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    final story = stories[index];
                    return StoryWidget(story: story, index: index);
                  },
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final post = posts[index];
                  return PostWidget(post: post, index: index);
                },
                childCount: posts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
