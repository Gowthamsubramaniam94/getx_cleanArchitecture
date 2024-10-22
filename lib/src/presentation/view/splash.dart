import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_template/src/presentation/controller/homecontroller.dart';
import 'package:getx_template/src/presentation/routes/app_pages.dart';
import 'package:getx_template/src/presentation/routes/approutes.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      child: Center(child: CircularProgressIndicator()),
    );
  }
  void init()async{
   await Future.delayed(Duration(seconds: 1));
   Get.offNamed(AppRoutes.homePage);
  }
}
