


import 'package:flutter/cupertino.dart';
import 'package:one_context/one_context.dart';

class NavigationService{

  static goTo(String routeName , {dynamic arguments}){
    OneContext().pushNamed(routeName,arguments: arguments);
  }

  static pushReplacement(String  routName, {dynamic arguments}){
    OneContext().pushReplacementNamed(routName,arguments: arguments);
  }

  static pushAndRemoveUntil(String routName, {dynamic arguments}) {
    OneContext().pushNamedAndRemoveUntil(routName, (route) => false);
  }
  static pushPageReplacement(BuildContext context, Widget page) {

    Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(
            builder: (context) => page, maintainState: true),
            (Route<dynamic> route) => false);
  }


  static pushPageToNextScreen(BuildContext context, Widget page) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  static goBack(){
    OneContext().pop();
  }




}