import 'package:check_mate/utils/constants.dart';
import 'package:check_mate/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
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
          sb(10),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: b * 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: b * 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    sb(10),
                    Column(
                      children: [
                        Text(
                          "2 min",
                          style: TextStyle(
                            color: terColor,
                            fontSize: b * 10,
                          ),
                        ),
                        sh(10),
                        CircleAvatar(
                          radius: b * 9,
                          backgroundColor: secondaryColor,
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: b * 8.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                sh(10),
                Container(
                  color: Colors.white,
                  height: h * 0.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
