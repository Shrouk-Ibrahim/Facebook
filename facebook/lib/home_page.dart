import 'package:flutter/material.dart';
import 'package:facebook/stories.dart';
import 'package:facebook/posts.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'Homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF415893),
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.messenger),
            onPressed: () {
              // Handle messenger action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stories(),

            Posts(
              userName: 'Shrouk',
              postText: 'iam iron man hahaha',
              postImage: 'assets/images/OIP.jpg',
            ),
            Posts(
              userName: 'Shrouk',
              postText: 'مسلسل رائع اعطيله 10/10',
              postImage: 'assets/images/OIF.jpg',
            ),
            Posts(
              userName: 'Travel',
              postText: 'Santorini',
              postImage: 'assets/images/sea.jpg',
            ),

          ],
        ),
      ),
    );
  }
}
