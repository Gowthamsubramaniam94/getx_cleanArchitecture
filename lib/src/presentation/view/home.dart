import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getx_template/src/base/baseview.dart';
import 'package:getx_template/src/domain/entity/user_contact_dto.dart';
import 'package:getx_template/src/presentation/controller/homecontroller.dart';

class HomeView extends BaseView<HomeController, UserContactDto> {
  @override
  Widget getWidget(BuildContext context, item) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [Text(item.email ?? ''),
            Container(child: ElevatedButton(
              child: Text('Press'),
              onPressed: (){
                controller.showToastMsg('This is a sample', 5);
              },
            ),)
          ],
        ),
      ),
    );
  }
}
