import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'User.dart';
class StoryWidget extends StatelessWidget {
  User user;
  StoryWidget(this.user);
  @override
  Widget build(BuildContext context) {
     return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage(user.image??''),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: NetworkImage(user.image??''),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(user.name??'', style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
