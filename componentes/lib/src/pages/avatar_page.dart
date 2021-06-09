import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            // padding: EdgeInsets.all(1.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://1.bp.blogspot.com/-g3ZzYF5ou44/XXNK19re_xI/AAAAAAAABKI/43i9P8Lkzkk-gy8QSUiORGF0xyLODNlBwCLcBGAs/s1600/logo-bmw-2.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JB'),
              backgroundColor: Colors.cyan,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://images.hgmsites.net/hug/2021-bmw-x6-series_100772578_h.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
