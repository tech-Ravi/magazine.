import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  final String poster, title, publishedDate;
  final VoidCallback onPress;

  const VerticalCard(
      {Key key,
      @required this.poster,
      @required this.title,
      @required this.publishedDate,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress ?? () {},
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: poster,
              child: Container(
                width: 150.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(poster),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 15), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.green.shade900),
            ),
            SizedBox(height: 8.0),
            Text(
              publishedDate,
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.bold, color: Color(0xFFBBBBBB)),
            ),
          ],
        ),
      ),
    );
  }
}
