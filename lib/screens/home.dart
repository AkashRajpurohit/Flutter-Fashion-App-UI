import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                _listItem("assets/model-1.jpeg", "assets/brand-1.jpeg"),
                _listItem("assets/model-2.jpeg", "assets/brand-2.jpeg"),
                _listItem("assets/model-3.jpeg", "assets/brand-3.jpeg"),
                _listItem("assets/model-4.jpeg", "assets/brand-4.jpeg"),
                _listItem("assets/model-5.jpeg", "assets/brand-5.jpeg"),
                _listItem("assets/model-6.jpeg", "assets/brand-6.jpeg"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage("assets/emilia-1.jpeg"),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width - 130.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Emilia",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "34 mins ago",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.more_vert),
                                color: Colors.grey,
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temperament and is recommend to friends.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                    image: AssetImage(imgPath),
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
                      image: AssetImage(logo),
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