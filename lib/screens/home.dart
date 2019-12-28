import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discovery',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            color: Colors.grey,
            onPressed: () {},
            iconSize: 30.0,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                _listItem("https://s3.amazonaws.com/uifaces/faces/twitter/marklamb/128.jpg", "http://lorempixel.com/640/480"),
                _listItem("https://s3.amazonaws.com/uifaces/faces/twitter/dhooyenga/128.jpg", "http://lorempixel.com/640/480/business"),
                _listItem("https://s3.amazonaws.com/uifaces/faces/twitter/skkirilov/128.jpg", "http://lorempixel.com/640/480/fashion"),
                _listItem("https://s3.amazonaws.com/uifaces/faces/twitter/joreira/128.jpg", "http://lorempixel.com/640/480/city"),
                _listItem("https://s3.amazonaws.com/uifaces/faces/twitter/sethlouey/128.jpg", "http://lorempixel.com/640/480/cats"),
                _listItem("https://s3.amazonaws.com/uifaces/faces/twitter/russell_baylis/128.jpg", "http://lorempixel.com/640/480/technics")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(String imgPath, String logo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                    image: NetworkImage(imgPath),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Positioned(
                top: 50.0,
                left: 50.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    image: DecorationImage(
                      image: NetworkImage(logo),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: 30.0,
            width: 75.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown,
            ),
            child: Center(
              child: Text(
                "Follow",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}