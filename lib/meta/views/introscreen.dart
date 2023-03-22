import 'package:afrocentral/meta/views/registerationScreen.dart';
import 'package:afrocentral/router.dart';
import 'package:afrocentral/shared/helpers.dart';
import 'package:afrocentral/meta/widgets/round_button.dart';
import 'package:afrocentral/utils/colorUtils.dart';
import 'package:afrocentral/meta/views/loginScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/imageUtils.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.APP_BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: pageHeight(context) * 0.10,),
              Center(
                child: Image.asset(ImageUtils.appLogo),
              ),
              SizedBox(height: pageHeight(context) * 0.02,),
              Text('Connecting you to the best hotspots',style: TextStyle(color: ColorUtils.APP_TEXT_COLOR,fontFamily: 'GtLight'),),
              SizedBox(height: pageHeight(context) * 0.12,),
              Image.asset(ImageUtils.appCupContent),
              SizedBox(height: pageHeight(context) * 0.17,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundedButton(buttonText: 'Create an account', onbuttonPressed: (){
                  NavigationService.pushPageToNextScreen(context, RegisterationScreen());
                }, isIcon: false),
              ),
              SizedBox(height: pageHeight(context) * 0.02,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundedButton(buttonText: 'Login', onbuttonPressed: (){
                  NavigationService.pushPageToNextScreen(context, LoginScreen());
                }, isIcon: false,bgColor: ColorUtils.APP_LOGIN_COLOR,),
              ),
              SizedBox(height: pageHeight(context) * 0.02,),
              Align(
                alignment: Alignment.bottomCenter,
                child:
                Text('Continue as a Guest',style: TextStyle(color: ColorUtils.APP_TEXT_COLOR,fontFamily: 'GtHeavy',letterSpacing: 1.3),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
