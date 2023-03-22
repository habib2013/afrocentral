import 'dart:async';
import 'dart:ui';

import 'package:afrocentral/router.dart';
import 'package:afrocentral/shared/helpers.dart';
import 'package:afrocentral/utils/imageUtils.dart';
import 'package:afrocentral/meta/views/introscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colorUtils.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        NavigationService.pushPageReplacement(context, IntroScreen());
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              color: ColorUtils.APP_BACKGROUND_COLOR
          ),
          child: Column(
            children: [

              Center(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: pageHeight(context) * 0.4 ),
                    child: Image.asset(ImageUtils.appLogo)
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:
                Text('Connecting you to the best hotspots',style: TextStyle(color: ColorUtils.APP_TEXT_COLOR,fontFamily: 'GtLight'),),
              )
            ],
          )


        )
    );
  }
}
