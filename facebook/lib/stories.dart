import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          buildStory('assets/images/facebookStory.jpg', Icons.account_circle, 'User 1'),
          buildStory('assets/images/facebookStory.jpg', Icons.account_circle, 'User 2'),
          buildStory('assets/images/facebookStory.jpg', Icons.account_circle, 'User 3'),
          buildStory('assets/images/facebookStory.jpg', Icons.account_circle, 'User 4'),
          buildStory('assets/images/facebookStory.jpg', Icons.account_circle, 'User 5'),
        ],
      ),
    );
  }

  Widget buildStory(String imagePath, IconData iconData, String owner) {
    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
              width: 100,
              height: 100,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              iconData,
              color: Colors.blueAccent,
              size: 24,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,


          ),
        ],
      ),
    );
  }
}
