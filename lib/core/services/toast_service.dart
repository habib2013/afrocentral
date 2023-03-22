import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:one_context/one_context.dart';


class ToastService {
  showSuccess(String message) {
    if(_getBuildContext()==null){
      // Fluttertoast.showToast(
      //   msg: message,
      //   toastLength: Toast.LENGTH_LONG,
      //   gravity: ToastGravity.BOTTOM,
      //   timeInSecForIosWeb: 1,
      //   backgroundColor: Colors.green,
      //   textColor: ColorUtils.WHITE_COLOR,
      //   fontSize: 16.0,
      // );
    }else{
      Flushbar(
        title: "Success",
        message: message,
        backgroundColor: Colors.green,
        flushbarStyle: FlushbarStyle.GROUNDED,
        duration: const Duration(seconds: 5),
      ).show(_getBuildContext());
    }
  }

  showError(String message) {
    if(_getBuildContext()==null){

      // Fluttertoast.showToast(
      //   msg: message,
      //   toastLength: Toast.LENGTH_LONG,
      //   gravity: ToastGravity.BOTTOM,
      //   timeInSecForIosWeb: 1,
      //   backgroundColor: Colors.red,
      //   textColor: ColorUtils.WHITE_COLOR,
      //   fontSize: 16.0,
      // );
    }else{
      Flushbar(
        title: "Error!",
        message: message,
        backgroundColor: Colors.red,
        flushbarStyle: FlushbarStyle.GROUNDED,
        duration: const Duration(seconds: 5),

      ).show(_getBuildContext());
    }

  }

  _getBuildContext(){
    return OneContext.instance.context;
  }

  showHint(String message,{String? title="Hint"}) {
    if(_getBuildContext()==null){
      // Fluttertoast.showToast(
      //   msg: message,
      //   toastLength: Toast.LENGTH_LONG,
      //   gravity: ToastGravity.BOTTOM,
      //   timeInSecForIosWeb: 1,
      //   backgroundColor: Colors.orange[600],
      //   textColor: ColorUtils.WHITE_COLOR,
      //   fontSize: 16.0,
      // );
    }else{
      Flushbar(
        title: title,
        message: message,
        backgroundColor: Colors.orange[400]??Colors.orange,
        flushbarStyle: FlushbarStyle.GROUNDED,
        duration: const Duration(seconds: 5),
      ).show(_getBuildContext());
    }


  }
}
