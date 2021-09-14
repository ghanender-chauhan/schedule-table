import 'package:flutter/material.dart';
import '../widget/app_drawer.dart';
import 'package:schedule_table/pages/settings_page.dart';
import '../reponsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../size_config.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Colors.red,
      ),
      drawer: AppDrawer(),
      body: SafeArea(
          bottom: false,
          top: false,
          left: true,
          right: true,
          child: ResponsiveWidget(
            portraitLayout: TopContainerPortrait(),
            landscapeLayout: TopContainerLandscape(),
          )),
    );
  }
}

class TopContainerPortrait extends StatelessWidget {
  const TopContainerPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.35,
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: 2 * SizeConfig.heightMultiplier,
            horizontal: 4 * SizeConfig.widthMultiplier),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0)),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.dashboard_rounded,
                    size: 40,
                  ),
                  margin: EdgeInsets.only(top: 7 * SizeConfig.heightMultiplier),
                ),
                Container(
                  // height: 55.0,
                  // color: Colors.orange,
                  // width: 100.0,

                  child: Row(
                    children: [
                      Text("     Address:\nAjmer, Rajasthan",
                          style: GoogleFonts.architectsDaughter(
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(
                              0, 0, 0, 3.3 * SizeConfig.heightMultiplier),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Icon(Icons.arrow_downward)),
                    ],
                  ),

                  margin: EdgeInsets.fromLTRB(
                      10 * SizeConfig.widthMultiplier,
                      5 * SizeConfig.heightMultiplier,
                      0.0,
                      0.8 * SizeConfig.heightMultiplier),
                  padding:
                      EdgeInsets.only(left: 8 * SizeConfig.widthMultiplier),
                  // decoration: BoxDecoration(
                  //   // color: Colors.orange,
                ),
                Container(
                  height: 7.5 * SizeConfig.heightMultiplier,
                  width: 17 * SizeConfig.widthMultiplier,
                  margin: EdgeInsets.only(
                      left: 1.65 * SizeConfig.widthMultiplier,
                      top: 4.37 * SizeConfig.heightMultiplier),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(
                      'assets/images/profile.png',
                    ),
                  ),
                ),
              ],
            )),
            Container(
              margin:
                  EdgeInsets.only(bottom: 2.5 * SizeConfig.heightMultiplier),
              height: 10 * SizeConfig.heightMultiplier,
              padding: EdgeInsets.only(
                left: 6.5 * SizeConfig.widthMultiplier,
                bottom: 3.5 * SizeConfig.heightMultiplier,
              ),
              color: Colors.orange,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          0.02 * SizeConfig.widthMultiplier,
                          1.2 * SizeConfig.heightMultiplier,
                          0,
                          0),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey, // set border color
                              width: 3.0,
                            )),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                top: 1.2 * SizeConfig.heightMultiplier,
                                left: 8 * SizeConfig.widthMultiplier),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black,
                              width: 5,
                            )),
                            hintText: "Search here",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              17 * SizeConfig.widthMultiplier,
                              1.5 * SizeConfig.heightMultiplier,
                              5 * SizeConfig.widthMultiplier,
                              0),
                          child: Container(
                            height: 5 * SizeConfig.heightMultiplier,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child: Icon(
                              Icons.settings,
                              color: Colors.black,
                              // size: 20,
                            ),
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopContainerLandscape extends StatelessWidget {
  const TopContainerLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.40,
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.dashboard_rounded,
                    size: 40,
                  ),
                  margin: EdgeInsets.only(
                      top: 1.2 * SizeConfig.heightMultiplier,
                      left: 9 * SizeConfig.widthMultiplier),
                ),
                Container(
                  // height: 55.0,
                  // color: Colors.orange,
                  // width: 100.0,

                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: 28.75 * SizeConfig.heightMultiplier)),
                      Text("     Address:\nAjmer, Rajasthan",
                          style: GoogleFonts.architectsDaughter(
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                              0, 0, 0, 6 * SizeConfig.widthMultiplier),
                          child: Icon(Icons.arrow_downward)),
                    ],
                  ),
                ),
                Container(
                  height: 6.5 * SizeConfig.heightMultiplier,
                  width: 17 * SizeConfig.widthMultiplier,
                  margin: EdgeInsets.only(
                      left: 25 * SizeConfig.heightMultiplier,
                      top: 1 * SizeConfig.imageSizeMultiplier),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(
                      'assets/images/profile.png',
                    ),
                  ),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.only(),
              height: 10 * SizeConfig.widthMultiplier,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Container(
                        // height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey, // set border color
                              width: 3.0,
                            )),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 2 * SizeConfig.heightMultiplier),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black,
                              width: 3,
                            )),
                            hintText: "Search here",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              27 * SizeConfig.heightMultiplier,
                              0,
                              5 * SizeConfig.widthMultiplier,
                              1.27 * SizeConfig.widthMultiplier),
                          child: Container(
                            height: 8.5 * SizeConfig.widthMultiplier,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child: Icon(
                              Icons.settings,
                              color: Colors.black,
                              size: 8 * SizeConfig.imageSizeMultiplier,
                            ),
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
