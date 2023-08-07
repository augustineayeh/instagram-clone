// ignore_for_file: public_member_api_docs, sort_constructors_first
class Story {
  final String imageUrl;
  final String username;
  Story({
    required this.imageUrl,
    required this.username,
  });
}

final List<Story> stories = [
  Story(imageUrl: 'assets/pictures/ye.jpeg', username: 'kanyewest'),
  Story(imageUrl: 'assets/pictures/messi.jpeg', username: 'leomessi'),
  Story(imageUrl: 'assets/pictures/bey.jpeg', username: 'beyonce'),
  Story(imageUrl: 'assets/pictures/bron.jpeg', username: 'kingjames'),
  Story(imageUrl: 'assets/pictures/riri.jpeg', username: 'badgalriri'),
];
