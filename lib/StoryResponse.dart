import 'User.dart';

class StoryResponse {
  User? user;

  StoryResponse.fromJson(Map<String, dynamic> Storydata) {
    user = User.fromJson(Storydata['user']);

  }
}