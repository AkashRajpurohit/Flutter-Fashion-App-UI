import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String heroTag;

  DetailsPage({this.heroTag});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.heroTag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.heroTag), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width - 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.4),
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/dress.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "LAMINDATED",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Louis vuitton",
                              style:
                                  TextStyle(fontSize: 16.0, color: Colors.grey),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              height: 35.0,
                              width: (MediaQuery.of(context).size.width + 45) / 2,
                              child: Text(
                                "One button V-neck sling, long-sleeved, waist female stiching dress",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.withOpacity(0.4)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        color: Colors.brown.withOpacity(0.5),
                        height: 10.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
