import 'package:flutter/material.dart';
import 'PostData.dart';
import 'PostWidget.dart';
import 'StoryData.dart';
import 'StoryWidget.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        onTap: (index) => {
          selectedIndex = index,
          setState(() => {})
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video,color: Colors.grey),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.grey),label: ""),
        ],),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Icon(Icons.camera_alt, color: Colors.grey[800], size: 30,),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                IconButton(
                  icon: Image.asset('images/messenger11.png'),
                  iconSize: 50,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text("Stories", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 22, letterSpacing: 1.2),),
                      Row(
                        children: [
                          Text("See Archive"),
                          Icon(Icons.arrow_forward_ios_outlined, size: 30, color: Colors.grey[600],),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: stories.length,
                      itemBuilder: (context, index) {
                        return StoryWidget(stories[index].user!);
                      }),
            ),

                  SizedBox(height: 40,),
                  Expanded(
                    child: ListView.builder(
                        itemCount: posts.length,
                        itemBuilder: (context, index) {
                          return PostWidget(posts[index].user!, posts[index].post!);
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }



}