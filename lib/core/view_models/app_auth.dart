import 'dart:developer';

import 'package:afrocentral/core/services/app_auth_service.dart';
import 'package:stacked/stacked.dart';

class AppAuthentication extends FutureViewModel {

  final AppAuthService appAuthService = AppAuthService();
  @override
  Future futureToRun() => getAuthenticated();


  Future loginUserViewModel(String username,String password){
   // print('>> run');
    Map<String,dynamic> loginRequest = {
      "username": username,
      "password": password
    };

   return appAuthService.authPostRequest(loginRequest,'login');
  }

  Future registerUserViewModel(String username,String password,String email){
    // print('>> run');
    Map<String,dynamic> registerRequest = {
      "username": username,
      "password": password,
      "email": email
    };

    return appAuthService.authPostRequest(registerRequest,'register');
  }

  Future getAuthenticated(){

   return appAuthService.getAuthenticatedUser();
  }


}