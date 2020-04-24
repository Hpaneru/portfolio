import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   colors: [const Color(0xff7e57c2), const Color(0xff7986cb)],
        // )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("images/hp.jpg"),
            ),
            SizedBox(height: 20.0),
            Text(
              'HEMANT PANERU HP',
              style: TextStyle(
                  fontSize: 30,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                // fontFamily: 'BreeSerif',
                letterSpacing: 2,
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 30.0,
              width: 180.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Mdi.github),
                  onPressed: () {
                    _launchURL("https://github.com/Hpaneru");
                  },
                  color: Colors.purple,
                  iconSize: 50.0,
                ),
                SizedBox(width: 30.0),
                IconButton(
                  icon: Icon(Mdi.twitter),
                  onPressed: () {
                    _launchURL("https://twitter.com/Hemant815");
                  },
                  color: Colors.blue,
                  iconSize: 50.0,
                ),
                SizedBox(width: 30.0),
                IconButton(
                  icon: Icon(Mdi.stackOverflow),
                  onPressed: () {
                    _launchURL(
                        "https://stackoverflow.com/users/11625739/hemant-hp?tab=profile");
                  },
                  color: Colors.yellow,
                  iconSize: 50.0,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Mdi.linkedin),
                  onPressed: () {
                    _launchURL("www.linkedin.com/in/hemant-paneru-hp");
                  },
                  color: Colors.blue,
                  iconSize: 50.0,
                ),
                SizedBox(width: 30.0),
                IconButton(
                  icon: Icon(Mdi.instagram),
                  onPressed: () {
                    _launchURL("https://www.instagram.com/hemaa_nt/");
                  },
                  color: Colors.orange[600],
                  iconSize: 50.0,
                ),
                SizedBox(width: 30.0),
                IconButton(
                  icon: Icon(Mdi.facebook),
                  onPressed: () {
                    _launchURL("https://www.facebook.com/hemant.paneru.16");
                  },
                  color: Colors.blue,
                  iconSize: 50.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
