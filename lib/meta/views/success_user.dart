import 'package:afrocentral/meta/widgets/round_button.dart';
import 'package:afrocentral/shared/helpers.dart';
import 'package:afrocentral/utils/imageUtils.dart';
import 'package:flutter/material.dart';

import '../../utils/colorUtils.dart';

class CustomerSucces extends StatelessWidget {
  const CustomerSucces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: pageHeight(context) * 0.25,),
                Center(
                child:  Image.asset(ImageUtils.successImage),
                ),
                SizedBox(height: 20,),
                Text('Your Account has been \n created successfully!',style: TextStyle(fontFamily: 'GtHeavy',fontSize: 19),),
               SizedBox(height: pageHeight(context) * 0.2,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child:
                      RoundedButton(buttonText: 'Go to my feed',onbuttonPressed: (){},isIcon: false,bgColor: ColorUtils.APP_LOGIN_COLOR,)
                     ),
                )

              ],
            ),
          ),  
    );
  }
}
