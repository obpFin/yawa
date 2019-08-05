import 'package:flutter/material.dart';

class TodayScreen extends StatelessWidget {
  static const pageRoute = 'today';

  @override
  Widget build(BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue, Colors.white]),
        ),
        child: Text('Today'),
      );
  }
}
