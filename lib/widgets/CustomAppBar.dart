import 'package:flutter/material.dart';
import 'package:flutter_magazine/screens/aboutpage.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: new BoxDecoration(
      //     gradient: new LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //         colors: [
      //       Colors.white70, Colors.green.shade300, // Colors.white70
      //     ])),
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
            child: Icon(
              Icons.all_inclusive_rounded,
              color: Colors.green.shade900,
              size: 28.0,
            ),
          ),
          Text(
            "Magazine.",
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade900,
                ),
          ),
          Icon(
            Icons.search,
            color: Colors.green.shade900,
            size: 28.0,
          ),
        ],
      ),
    );
  }
}
