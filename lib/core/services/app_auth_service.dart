import 'package:afrocentral/core/services/post_service.dart';
import 'package:dio/dio.dart';
import 'package:stacked/stacked.dart';

class AppAuthService {

    Future<Response?> authPostRequest(Map<String,dynamic> authrequest,String sub_url) async {
        appPostService(authrequest,sub_url);
        // return null;
    }


Future getAuthenticatedUser() async{

}


}