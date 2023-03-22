
import 'package:afrocentral/core/dependencies.dart';
import 'package:afrocentral/core/services/toast_service.dart';
import 'package:afrocentral/meta/views/success_user.dart';
import 'package:afrocentral/router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

String baseUrl = 'https://afrocentral.uk/wp-json/remote-auth/';

appPostService(Map<String,dynamic> data,String sub_url) async{
  var dio = Dio();
  try {
    var response = await dio.post('${baseUrl}${sub_url}',
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ));
    print(response.data);
    if(response.statusCode == 200){
      locator.get<ToastService>().showSuccess(response.data['message']);
      OneContext().push(MaterialPageRoute(builder: (_) => CustomerSucces()));
    }
    else {
      locator.get<ToastService>().showError(response.data['message']);
    }
    return response;
  } catch (e) {
    locator.get<ToastService>().showError('Invalid login request');

    print(e.toString());
  }
}