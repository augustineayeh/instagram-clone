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
  Story(imageUrl: 'assets/pictures/julie.jpeg', username: 'juliananalu'),
  Story(imageUrl: 'assets/pictures/durk.jpeg', username: 'lildurk'),
  Story(imageUrl: 'assets/pictures/nicki.jpeg', username: 'nickiminaj'),
  Story(imageUrl: 'assets/pictures/bron.jpeg', username: 'kingjames'),
  Story(imageUrl: 'assets/pictures/bey.jpeg', username: 'beyonce'),
  Story(imageUrl: 'assets/pictures/riri.jpeg', username: 'badgalriri'),
  Story(imageUrl: 'assets/pictures/messi.jpeg', username: 'leomessi'),
  Story(imageUrl: 'assets/pictures/adidas.jpeg', username: 'adidas'),
  Story(imageUrl: 'assets/pictures/chelsea.jpeg', username: 'chelseafc'),
  Story(imageUrl: 'assets/pictures/ye.jpeg', username: 'kanyewest'),
];
