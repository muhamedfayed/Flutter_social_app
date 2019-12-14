import 'dart:math';
import 'package:flutter/material.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    List friends = List.generate(
        13,
        (index) => {
              "name": "Lorem ipsum",
              "dp": "assets/img${random.nextInt(4)}.jpg",
              "status": "Sed ut perspiciatis unde omnis",
              "Followed": random.nextBool(),
            });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () {},
        ),
        title: TextField(
          decoration: InputDecoration.collapsed(
            hintText: 'Find',
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 0.5,
              width: MediaQuery.of(context).size.width / 1.3,
              child: Divider(),
            ),
          );
        },
        itemCount: friends.length,
        itemBuilder: (BuildContext context, int index) {
          Map friend = friends[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  friend['dp'],
                ),
                radius: 25,
              ),
              contentPadding: EdgeInsets.all(0),
              title: Text(friend['name']),
              subtitle: Text(friend['status']),
              trailing: friend['Followed']
                  ? FlatButton(
                      child: Text(
                        "Unfollow",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.grey,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)),
                    )
                  : FlatButton(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Theme.of(context).accentColor,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side:
                              BorderSide(color: Theme.of(context).accentColor)),
                    ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
