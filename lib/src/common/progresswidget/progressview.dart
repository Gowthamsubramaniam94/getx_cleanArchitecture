import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(child: Center(child: CircularProgressIndicator()),);
  }
}
