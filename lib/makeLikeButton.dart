import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget makeLikeButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.thumb_up, color: Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text("Like", style: TextStyle(color:Colors.grey),)
        ],
      ),
    ),
  );
}