import 'package:flutter/material.dart';

class WeekScreen extends StatelessWidget {
  static const routeName = 'week';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.white]),
      ),
      child: Column(
        children: [
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Week',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Text('Rainy'),
              SizedBox(height: 10,),
              Text('68\'F'),
            ],
          ),
                    Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Week',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Text('Rainy'),
              SizedBox(height: 10,),
              Text('68\'F'),
            ],
          ),
        ],
      ),
    );
  }
}
