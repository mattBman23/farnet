import 'package:farnet/templateApps/productionApp/constants/constants.dart';
import 'package:flutter/material.dart';

class BlogSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.buttonColor.withOpacity(0.8),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(Constants.profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(Constants.profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(Constants.profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(Constants.profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    );
  }
}
