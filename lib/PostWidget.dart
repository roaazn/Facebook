import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Post.dart';
import 'User.dart';
import 'makeCommentButton.dart';
import 'makeLike.dart';
import 'makeLikeButton.dart';
import 'makeLove.dart';

class PostWidget extends StatelessWidget {
  User user;
  Post post;
  PostWidget(this.user, this.post);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(user.image??''),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(user.name??"", style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                      SizedBox(height: 3,),
                      Text(post.time??'', style: TextStyle(fontSize: 15, color: Colors.grey),),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(post.content??'', style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
          SizedBox(height: 20,),
          post.image != '' ?
          Container(
            height: 200,
            child:Image.network(
              post.image??'',
              fit: BoxFit.cover,
            ),
          ) : Container(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeLike(),
                  Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove()
                  ),
                  SizedBox(width: 5,),
                  Text("3.2K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                ],
              ),
              Text("360 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            children: <Widget>[
              makeLikeButton(),
              makeCommentButton(),
            ],
          )
        ],
      ),
    );
  }
}
