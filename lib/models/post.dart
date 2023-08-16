// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  final String username;
  final String profilePicUrl;
  final String mediaUrl;
  final String caption;
  int likes;
  final int numberOfComments;

  
  Post({
    required this.username,
    required this.profilePicUrl,
    required this.mediaUrl,
    required this.caption,
    required this.likes,
    required this.numberOfComments,
  });
}

final List<Post> posts = [
  Post(
      mediaUrl: 'assets/pictures/bey.jpeg',
      username: 'beyonce',
      profilePicUrl: 'assets/pictures/bey.jpeg',
      caption: 'Alexa, play "apeshit" by The Carters',
      likes: 11883922,
      numberOfComments: 6756),
  Post(
      mediaUrl: 'assets/pictures/bron.jpeg',
      username: 'kingjames',
      profilePicUrl: 'assets/pictures/bron.jpeg',
      caption: 'Game 7. #LakeShow',
      likes: 7812392,
      numberOfComments: 7638),
  Post(
      mediaUrl: 'assets/pictures/ye.jpeg',
      username: 'kanyewest',
      profilePicUrl: 'assets/pictures/ye.jpeg',
      caption: 'The Life Of Pablo listening event at MSG',
      likes: 3323432,
      numberOfComments: 9842),
  Post(
      mediaUrl: 'assets/pictures/riri.jpeg',
      username: 'badgirlriri',
      profilePicUrl: 'assets/pictures/riri.jpeg',
      caption: '#MetGala2022',
      likes: 48784522,
      numberOfComments: 2653),
  Post(
      mediaUrl: 'assets/pictures/drake.jpeg',
      username: 'Champagnepapi',
      profilePicUrl: 'assets/pictures/drake.jpeg',
      caption: 'Slaughter gang 🦉🗡️',
      likes: 246864442,
      numberOfComments: 35322),
  Post(
      mediaUrl: 'assets/pictures/lori.jpeg',
      username: 'loriharvey',
      profilePicUrl: 'assets/pictures/lori.jpeg',
      caption: 'bout last night ',
      likes: 3761442,
      numberOfComments: 98322),
  Post(
      mediaUrl: 'assets/pictures/messi2.jpeg',
      username: 'leomessi',
      profilePicUrl: 'assets/pictures/messi2.jpeg',
      caption: "We're World Champions 🏆",
      likes: 256537,
      numberOfComments: 229543),
  Post(
      mediaUrl: 'assets/pictures/mbappe.jpeg',
      username: 'k.mbappe',
      profilePicUrl: 'assets/pictures/mbappe.jpeg',
      caption: '🐐🐐🐐',
      likes: 757442,
      numberOfComments: 1572),
  Post(
      mediaUrl: 'assets/pictures/ronaldo.jpeg',
      username: 'cristiano',
      profilePicUrl: 'assets/pictures/ronaldo.jpeg',
      caption: 'Thank you, Al Nassr',
      likes: 465864,
      numberOfComments: 222425)
];
