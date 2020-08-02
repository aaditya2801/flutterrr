import 'package:businesscard/ui/socicon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

offlineaudio() {
  Scaffold(
    appBar: AppBar(
      title: Text('OFFLINE AUDIO PLAYER'),
    ),
  );
}
// ignore: unused_element

_launchURL2() async {
  const url = 'https://github.com/aaditya2801';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL() async {
  const url = 'https://www.linkedin.com/in/aaditya-tiwari-812a39183/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

myt3() async {
  final MailOptions mailOptions = MailOptions(
    body: 'hello how are you...??',
    subject: 'friendly message',
    recipients: ['tiwariaaditya2801@gmail.com'],
    isHTML: true,
    //bccRecipients: ['other@example.com'],
    //ccRecipients: ['third@example.com'],
    //attachments: [
    //'path/to/image.png',
    //],
  );

  await FlutterMailer.send(mailOptions);
}

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  myprint() {
    print('AADITYA  !! ');
  }

  myt2() {
    Fluttertoast.showToast(
        msg: "email-aaditya2801@gmail.com",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  myt() {
    Fluttertoast.showToast(
        msg: "This is Aaditya!! FLUTTER TASK 1 !! AUDIO & VIDEO PLAYER",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 6,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          // padding: EdgeInsets.all(30),
          // padding: EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'AADITYA TIWARI',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Socicon.linkedin), onPressed: _launchURL),
                  Text('  LinkedIn Profile'),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          // onTap: myprint,
          onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/aaditya2801/myflutter/master/106597665_1160338320988117_3003956187937447887_o.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.amber,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
        ),
      ],
    ),
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      drawer: MultiLevelDrawer(
          backgroundColor: Colors.amber,
          subMenuBackgroundColor: Colors.blueGrey,
          divisionColor: Colors.white70,
          rippleColor: Colors.blueAccent,
          header: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://raw.githubusercontent.com/aaditya2801/myflutter/master/apps.20560.13835613699622405.21ee6d10-b26f-4e77-b37f-b77f44fbee5d.png',
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("MY APPS")
                ],
              ),
            ),
          ),
          children: [
            MLMenuItem(
                leading: Icon(Icons.audiotrack),
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: ListTile(
                        title: Column(
                          children: <Widget>[
                            Icon(Icons.music_note),
                            Text(' OFFLINE MUSIC')
                          ],
                        ),
                      ),
                      onClick: offlineaudio),
                  MLSubmenu(
                      submenuContent: ListTile(
                        title: Column(
                          children: <Widget>[
                            Icon(Icons.music_note),
                            Text(' ONLINE MUSIC')
                          ],
                        ),
                      ),
                      onClick: _launchURL2),
                ],
                content: Text("AUDIO PLAYER"),
                onClick: () {}),
            MLMenuItem(
                leading: Icon(Icons.video_library),
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: ListTile(
                        title: Column(
                          children: <Widget>[
                            Icon(Icons.video_library),
                            Text(' OFFLINE VIDEO')
                          ],
                        ),
                      ),
                      onClick: _launchURL),
                  MLSubmenu(
                      submenuContent: ListTile(
                        title: Column(
                          children: <Widget>[
                            Icon(Icons.video_library),
                            Text(' ONLINE VIDEO')
                          ],
                        ),
                      ),
                      onClick: _launchURL2),
                ],
                content: Text("VIDEO PLAYER"),
                onClick: () {}),
          ]),
      appBar: AppBar(
        title: Text('AV PLAYER'),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Socicon.github), onPressed: _launchURL2),
          IconButton(icon: Icon(Icons.account_circle), onPressed: myt),
        ],
      ),
      body: mybody,
    ),
  );
}
