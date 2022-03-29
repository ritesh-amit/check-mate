import 'package:check_mate/utils/constants.dart';
import 'package:check_mate/widgets/friendTile.dart';
import 'package:check_mate/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class FriendList extends StatelessWidget {
  const FriendList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: primaryColor,
        drawer: Drawer(
          backgroundColor: primaryColor,
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Text(
            "FRIENDS LIST",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: h * 8, horizontal: b * 8),
            margin: EdgeInsets.symmetric(horizontal: b * 20, vertical: h * 10),
            decoration: BoxDecoration(
              color: terColor,
              borderRadius: BorderRadius.circular(b * 20),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(b * 20),
                color: Colors.black.withOpacity(0.5),
              ),
              tabs: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: h * 5),
                  child: Text(
                    "Requests",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: h * 5),
                  child: Text(
                    "Chats",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return FriendTile(b: b, h: h);
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

