
import 'package:get/get.dart';
import 'package:getx_template/src/di/homebindings.dart';
import 'package:getx_template/src/presentation/routes/approutes.dart';
import 'package:getx_template/src/presentation/view/home.dart';

class AppPages{
  static final pagesList = [
    homeView,
  ];

  static final homeView = GetPage(
    name: AppRoutes.homePage,
    page: () => HomeView(),
    binding: HomeBinding()
  );

 /* static final offline = GetPage(
    name: AppRoutes.internetPage,
    page: () => MyHomePage(),
  );*/
}