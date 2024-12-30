import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String userName;
  final String postText;
  final String postImage;

  Posts({
    required this.userName,
    required this.postText,
    required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/images/account.png'),
                ),
                SizedBox(width: 8.0),
                Text(
                  userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),

          // Post text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              postText,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 12.0),

          // Post image
          Image.asset(
            postImage,
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 12.0),

          // Like, Comment, Share buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    // Handle like button press
                  },
                  icon: Icon(Icons.thumb_up),
                  label: Text('Like'),
                ),
                TextButton.icon(
                  onPressed: () {

                  },
                  icon: Icon(Icons.comment),
                  label: Text('Comment'),
                ),
                TextButton.icon(
                  onPressed: () {

                  },
                  icon: Icon(Icons.share),
                  label: Text('Share'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
