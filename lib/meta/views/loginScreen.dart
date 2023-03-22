import 'package:afrocentral/core/view_models/app_auth.dart';
import 'package:afrocentral/meta/widgets/text_field.dart';
import 'package:afrocentral/shared/helpers.dart';
import 'package:afrocentral/utils/colorUtils.dart';
import 'package:afrocentral/utils/imageUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import '../widgets/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
  TextEditingController password = TextEditingController();




  Widget build(BuildContext context) {

    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AppAuthentication(),
        builder: (context, viewModel, child) =>
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
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child:  Image.asset(ImageUtils.appCupContent)
                      ),

                      Divider(height: 0,thickness: 0,color: Colors.transparent,),

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
                                              Text('Login',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 25,fontWeight: FontWeight.bold),),
                                              SizedBox(height: 3,),
                                              Text('Enter your login details below to continue,',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 17,fontWeight: FontWeight.w200),),
                                              SizedBox(height: 30,),
                                              Text('Username',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 17,fontWeight: FontWeight.w200)),
                                              SizedBox(height: 5,),

                                              CustomTextField(textEditingController: username),


                                              SizedBox(height: 15,),
                                              Text('Password',style: TextStyle(color: Colors.black,fontFamily: 'GtLight',fontSize: 17,fontWeight: FontWeight.w400)),
                                              SizedBox(height: 5,),
                                              CustomTextField(textEditingController: password),
                                              SizedBox(height: 15,),
                                              RoundedButton(buttonText: 'Login', onbuttonPressed: (){
                                                      viewModel.loginUserViewModel(username.text, password.text);
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
