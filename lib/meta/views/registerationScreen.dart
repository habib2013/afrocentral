import 'package:afrocentral/meta/widgets/text_field.dart';
import 'package:afrocentral/shared/helpers.dart';
import 'package:afrocentral/meta/widgets/round_button.dart';
import 'package:afrocentral/utils/colorUtils.dart';
import 'package:afrocentral/utils/imageUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../core/view_models/app_auth.dart';


class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({Key? key}) : super(key: key);

  @override
  _RegisterationScreenState createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose


    super.dispose();
  }

  @override
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();





  Widget build(BuildContext context) {





    return  ViewModelBuilder.reactive( viewModelBuilder: () => AppAuthentication(),  builder: (context, viewModel, child) =>
        Scaffold(
          backgroundColor: ColorUtils.APP_BACKGROUND_COLOR,
          body: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Image.asset(ImageUtils.appLogo)),
                          SizedBox(width: 10,),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  //  Divider(height: 15,thickness: 0,color: Colors.transparent,),
                  // Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 0),
                  //     child:  Image.asset(ImageUtils.appCupContent)
                  // ),

                  // Divider(height: 0,thickness: 0,color: Colors.transparent,),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  SizedBox(height: 20,),
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 6,),
                                          Text('Create an account',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 25,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 3,),
                                          Text('Let\'s get you started',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 17,fontWeight: FontWeight.w200),),
                                          SizedBox(height: 30,),
                                          Text('Email Address',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 17,fontWeight: FontWeight.w200)),
                                          SizedBox(height: 5,),
                                          CustomTextField(textEditingController: email),

                                          SizedBox(height: 15,),
                                          Text('Username',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 17,fontWeight: FontWeight.w200)),
                                          SizedBox(height: 5,),
                                          CustomTextField(textEditingController: username),


                                          SizedBox(height: 15,),
                                          Text('Password',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 17,fontWeight: FontWeight.w200)),
                                          SizedBox(height: 5,),
                                          CustomTextField(textEditingController: password),

                                          SizedBox(height: 15,),
                                          RoundedButton(buttonText: 'Create Account', onbuttonPressed: (){

                                              viewModel.registerUserViewModel(username.text, password.text,email.text);
                                          }, isIcon: false,bgColor: ColorUtils.APP_LOGIN_COLOR,),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Create Account',style: TextStyle(color: ColorUtils.APP_BORDER_COLOR,fontFamily: 'GtLight'),),
                                              Text('Forgot Password',style: TextStyle(color: ColorUtils.APP_BORDER_COLOR,fontFamily: 'GtLight'),),

                                            ],
                                          ),
                                          SizedBox(height: 40,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(

                                                  decoration: BoxDecoration(
                                                      color: ColorUtils.LIGHT_GREEN
                                                  ),
                                                  width: pageWidth(context) * 0.4,
                                                  height: 45,
                                                  child: Center(
                                                    child:   Image.asset(ImageUtils.appLogoGmail),
                                                  )


                                              ),
                                              Container(

                                                  decoration: BoxDecoration(
                                                      color: ColorUtils.LIGHT_GREEN
                                                  ),
                                                  width: pageWidth(context) * 0.4,
                                                  height: 45,
                                                  child: Center(
                                                    child:   Image.asset(ImageUtils.appLogoApple),
                                                  )


                                              ),
                                            ],
                                          )

                                        ],
                                      )


                                  )

                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
      


  }
}
