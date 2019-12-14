import 'package:flutter/material.dart';
import 'dart:math';
import 'package:social_flutter_app_skelton/custom_widgets/post_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    //our posts list
    List posts = List.generate(
        50,
        (index) => {
              "name": "Lorem Ipsum",
              "dp": "assets/img${random.nextInt(4)}.jpg",
              "time": "1 min ago",
              "img": "assets/land${random.nextInt(5)}.jpg"
            });

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          Map post = posts[index];
          return PostItem(
            img: post['img'],
            name: post['name'],
            dp: post['dp'],
            time: post['time'],
          );
        },
      ),
    );
  }
}
