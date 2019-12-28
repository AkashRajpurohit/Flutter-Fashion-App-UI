import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String heroTag;

  DetailsPage({ this.heroTag });

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
                  image: AssetImage(widget.heroTag),
                  fit: BoxFit.cover
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}