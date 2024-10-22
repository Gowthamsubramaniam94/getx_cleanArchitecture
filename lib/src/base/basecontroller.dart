
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:getx_template/src/base/baseview.dart';
import 'package:getx_template/src/common/retrywidget/retryview.dart';

abstract class BaseController<S> extends GetxController with StateMixin<S> {
  static late Function retried;

  void setRetry({required Function retry}){
    retried=retry;
  }
  void showToastMsg(String text,int secs){
    showToast(text,context: Get.overlayContext,duration: Duration(seconds: secs));
  }
  Widget showRetry(String msg){
    return RetryView(retry:retried,message: msg,);
  }
}


