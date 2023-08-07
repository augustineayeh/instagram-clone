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
      numberOfComments: 343),
  Post(
      mediaUrl: 'assets/pictures/bron.jpeg',
      username: 'kingjames',
      profilePicUrl: 'assets/pictures/bron.jpeg',
      caption: 'Game 7. #LakeShow',
      likes: 7712392,
      numberOfComments: 343),
  Post(
      mediaUrl: 'assets/pictures/ye.jpeg',
      username: 'kanyewest',
      profilePicUrl: 'assets/pictures/ye.jpeg',
      caption: 'The Life Of Pablo listening event at MSG',
      likes: 3323432,
      numberOfComments: 343),
  Post(
      mediaUrl: 'assets/pictures/riri.jpeg',
      username: 'badgirlriri',
      profilePicUrl: 'assets/pictures/riri.jpeg',
      caption: '#MetGala2022',
      likes: 9824422,
      numberOfComments: 343)
];
