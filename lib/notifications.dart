import 'package:check_mate/utils/constants.dart';
import 'package:check_mate/widgets/notificationTile.dart';
import 'package:check_mate/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      backgroundColor: primaryColor,
      drawer: Drawer(
        backgroundColor: primaryColor,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          "NOTIFICATION",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
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
                    return NotificationTile(b: b, h: h);
                  },
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
