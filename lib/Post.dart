class Post {
  String? content;
  String? image;
  int? noLikes;
  int? noComments;
  String? time;
  Post.fromJson(Map<String, dynamic> data) {
    content = data['content'];
    image = data['image'];
    noLikes = data['noLikes'];
    noComments = data['noComments'];
    time=data['time'];
  }
}