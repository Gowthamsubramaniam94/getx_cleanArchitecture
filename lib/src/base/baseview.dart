import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_template/src/base/basecontroller.dart';
import 'package:getx_template/src/common/progresswidget/progressview.dart';

abstract class BaseView<T extends BaseController, S extends dynamic>
    extends GetView {
  Widget getWidget(BuildContext context, S item);

  T get controller => Get.find<T>();

  S get item => controller.state;

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) {
      return getWidget(context, item);
    },
        onError: (error) => controller.showRetry(error ?? ''),
        onLoading: ProgressView(),
        onEmpty: Container());
  }
}
