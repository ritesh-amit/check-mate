import 'package:check_mate/utils/constants.dart';
import 'package:check_mate/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: b * 30, right: b * 30),
                physics: BouncingScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sh(20),
                      Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: b * 22,
                          ),
                        ),
                      ),
                      sh(30),
                      Container(
                        height: h * 210,
                        margin: EdgeInsets.symmetric(horizontal: b * 60),
                        decoration: BoxDecoration(
                          border: Border.all(color: secondaryColor),
                          borderRadius: BorderRadius.circular(b * 5),
                        ),
                      ),
                      sh(150),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          color: Color(0xff8a8a8a),
                          fontWeight: FontWeight.w600,
                          fontSize: b * 18,
                        ),
                      ),
                      sh(10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: terColor),
                          borderRadius: BorderRadius.circular(b * 10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: b * 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: secondaryColor,
                              size: b * 20,
                            ),
                            sb(10),
                            Container(
                              color: terColor,
                              width: b * 0.5,
                              height: h * 30,
                            ),
                            Expanded(
                              child: TextFormField(
                                key: key,
                                style: TextStyle(
                                  fontSize: b * 14,
                                  color: terColor,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w500,
                                ),
                                controller: phoneController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  isDense: true,
                                  counterText: '',
                                  hintText: "Enter Phone Number",
                                  hintStyle: TextStyle(
                                    fontSize: b * 14,
                                    fontWeight: FontWeight.w400,
                                    color: terColor,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: b * 12,
                                    vertical: h * 12,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      sh(100),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: b * 30),
                          height: h * 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                blurRadius: 6,
                                offset: Offset(0, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(b * 30),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xfffc4752),
                                Color(0xffd2222c),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: b * 18,
                            ),
                          ),
                        ),
                      ),
                      sh(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: b * 18,
                            ),
                          ),
                          InkWell(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: secondaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: b * 18,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
