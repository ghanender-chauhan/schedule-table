import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../reponsive_widget.dart';
import '../size_config.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = '/settings';

  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var primaryColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveWidget(
      portraitLayout: ContainerPortrait(),
      landscapeLayout: ContainerLandscape(),
    ));
  }
}

class ContainerPortrait extends StatefulWidget {
  const ContainerPortrait({Key? key}) : super(key: key);

  @override
  _ContainerPortraitState createState() => _ContainerPortraitState();
}

class _ContainerPortraitState extends State<ContainerPortrait> {
  var primaryColor = Colors.blue;
  bool valnotify1 = false;
  bool valnotify2 = false;
  bool valnotify3 = false;

  onChangeFunction1(bool val1) {
    setState(() {
      valnotify1 = val1;
    });
  }

  onChangeFunction2(bool val2) {
    setState(() {
      valnotify2 = val2;
    });
  }

  onChangeFunction3(bool val3) {
    setState(() {
      valnotify3 = val3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Settings"),
        backgroundColor: primaryColor,
      ),
      body: Container(
        height: double.maxFinite,
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.red;
                      });
                    },
                    child: Text(
                      "R",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.pink;
                      });
                    },
                    child: Text(
                      "P",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.brown;
                      });
                    },
                    child: Text(
                      "B",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.teal;
                      });
                    },
                    child: Text(
                      "T",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.grey;
                      });
                    },
                    child: Text(
                      "G",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 3.8 * SizeConfig.heightMultiplier,
                ),
                SizedBox(width: 3 * SizeConfig.widthMultiplier),
                Text(
                  "Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 3 * SizeConfig.textMultiplier,
                  ),
                )
              ],
            ),
            Divider(
              height: 2.5 * SizeConfig.heightMultiplier,
              thickness: 2,
            ),
            SizedBox(
              height: 1.2 * SizeConfig.heightMultiplier,
            ),
            buildAccountOption(
              context,
              "Change Password",
            ),
            buildAccountOption(context, "Privacy and Security"),
            buildAccountOption(context, "Language"),
            buildAccountOption(context, "Social"),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(
                  Icons.volume_up,
                  color: Colors.black,
                  size: 10 * SizeConfig.imageSizeMultiplier,
                ),
                SizedBox(
                  width: 2.5 * SizeConfig.widthMultiplier,
                ),
                Text(
                  "Notification",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 3 * SizeConfig.textMultiplier),
                )
              ],
            ),
            Divider(
              height: 2.5 * SizeConfig.heightMultiplier,
              thickness: 2,
            ),
            SizedBox(
              height: 1.2 * SizeConfig.heightMultiplier,
            ),
            buildNotificationOption(
                "Theme Dark", valnotify1, onChangeFunction1),
            buildNotificationOption(
                "Mute Notification", valnotify2, onChangeFunction2),
            buildNotificationOption("Privacy", valnotify3, onChangeFunction3),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 1 * SizeConfig.heightMultiplier,
          horizontal: 2.7 * SizeConfig.widthMultiplier),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 4 * SizeConfig.widthMultiplier,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "English",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Hindi"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Close",
                        style:
                            TextStyle(fontSize: 2 * SizeConfig.textMultiplier),
                      ))
                ],
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 1.2 * SizeConfig.heightMultiplier,
            horizontal: 5.2 * SizeConfig.widthMultiplier),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 2.4 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 5.2 * SizeConfig.imageSizeMultiplier,
            )
          ],
        ),
      ),
    );
  }
}

class ContainerLandscape extends StatefulWidget {
  const ContainerLandscape({Key? key}) : super(key: key);

  @override
  _ContainerLandscapeState createState() => _ContainerLandscapeState();
}

class _ContainerLandscapeState extends State<ContainerLandscape> {
  var primaryColor = Colors.blue;
  bool valnotify1 = false;
  bool valnotify2 = false;
  bool valnotify3 = false;

  onChangeFunction1(bool val1) {
    setState(() {
      valnotify1 = val1;
    });
  }

  onChangeFunction2(bool val2) {
    setState(() {
      valnotify2 = val2;
    });
  }

  onChangeFunction3(bool val3) {
    setState(() {
      valnotify3 = val3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Settings"),
        backgroundColor: primaryColor,
      ),
      body: Container(
        height: double.maxFinite,
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.red;
                      });
                    },
                    child: Text(
                      "R",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.pink;
                      });
                    },
                    child: Text(
                      "P",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.brown;
                      });
                    },
                    child: Text(
                      "B",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.teal;
                      });
                    },
                    child: Text(
                      "T",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = Colors.grey;
                      });
                    },
                    child: Text(
                      "G",
                      textAlign: TextAlign.justify,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.fromLTRB(
                      0.0,
                      1 * SizeConfig.heightMultiplier,
                      0.0,
                      1.2 * SizeConfig.heightMultiplier),
                  width: 11 * SizeConfig.widthMultiplier,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 3.8 * SizeConfig.heightMultiplier,
                ),
                SizedBox(width: 3 * SizeConfig.widthMultiplier),
                Text(
                  "Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 3 * SizeConfig.textMultiplier,
                  ),
                )
              ],
            ),
            Divider(
              height: 2.5 * SizeConfig.heightMultiplier,
              thickness: 2,
            ),
            SizedBox(
              height: 1.2 * SizeConfig.heightMultiplier,
            ),
            buildAccountOption(
              context,
              "Change Password",
            ),
            buildAccountOption(context, "Privacy and Security"),
            buildAccountOption(context, "Language"),
            buildAccountOption(context, "Social"),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(
                  Icons.volume_up,
                  color: Colors.black,
                  size: 10 * SizeConfig.imageSizeMultiplier,
                ),
                SizedBox(
                  width: 2.5 * SizeConfig.widthMultiplier,
                ),
                Text(
                  "Notification",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 3 * SizeConfig.textMultiplier),
                )
              ],
            ),
            Divider(
              height: 2.5 * SizeConfig.heightMultiplier,
              thickness: 2,
            ),
            SizedBox(
              height: 1.2 * SizeConfig.heightMultiplier,
            ),
            buildNotificationOption(
                "Theme Dark", valnotify1, onChangeFunction1),
            buildNotificationOption(
                "Mute Notification", valnotify2, onChangeFunction2),
            buildNotificationOption("Privacy", valnotify3, onChangeFunction3),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 1 * SizeConfig.heightMultiplier,
          horizontal: 2.7 * SizeConfig.widthMultiplier),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 5 * SizeConfig.widthMultiplier,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "English",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Hindi"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Close",
                        style:
                            TextStyle(fontSize: 2 * SizeConfig.textMultiplier),
                      ))
                ],
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 1.2 * SizeConfig.heightMultiplier,
            horizontal: 5.2 * SizeConfig.widthMultiplier),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 2.4 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 5.2 * SizeConfig.imageSizeMultiplier,
            )
          ],
        ),
      ),
    );
  }
}
