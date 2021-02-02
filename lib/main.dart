import 'package:flutter/material.dart';
import 'package:id_card/utils/assets.dart';
import 'package:id_card/utils/colors.dart';
import 'package:id_card/utils/font_size.dart';
import 'package:id_card/utils/profile_info.dart';

void main() {
  runApp(MaterialApp(
    home: IDCard(),
  ));
}

class IDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(AssetsPath.profilePath),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: ProfileColors.dividerColor,
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: ProfileColors.titleColor, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              ProfileData.name,
              style: TextStyle(
                  color: ProfileColors.subTextColor,
                  letterSpacing: 2.0,
                  fontSize: ProfileSize.subTextSize,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Contact',
              style: TextStyle(
                  color: ProfileColors.titleColor, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  ProfileData.email,
                  style: TextStyle(
                      color: ProfileColors.subTextColor,
                      letterSpacing: 2.0,
                      fontSize: ProfileSize.emailTextSize,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
