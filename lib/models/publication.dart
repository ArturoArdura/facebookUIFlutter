 class Publication{
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int comentsCount;
  final int sharesCount;
  final int reactionsCount;
  final Reaction currentUserReaction;
  
  Publication({
    required this.user,
    required this.title,
    required this.createdAt,
    required this.imageUrl,
    required this.comentsCount,
    required this.sharesCount,
    required this.reactionsCount,
    required this.currentUserReaction,
  });
 }

class User{
  final String avatar;
  final String username;

  User({
    required this.avatar,
    required this.username,
  });

}

enum Reaction{
  like,
  love,
  haha,
  wow,
  sad,
  angry,
}