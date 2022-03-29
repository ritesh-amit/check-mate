import 'package:check_mate/utils/constants.dart';
import 'package:check_mate/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class FriendTile extends StatelessWidget {
  const FriendTile({
    Key? key,
    required this.b,
    required this.h,
  }) : super(key: key);

  final double b;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: b * 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white, width: b * 0.3),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: h * 18),
      child: Row(
        children: [
          Container(
            height: h * 60,
            width: b * 60,
            decoration: BoxDecoration(
              color: secondaryColor,
              shape: BoxShape.circle,
            ),
          ),
          sb(15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "26 March 2022",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b * 12,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Container(
              height: h * 35,
              width: b * 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: terColor,
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: b * 16,
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: h * 35,
              width: b * 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: terColor,
              ),
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: b * 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
