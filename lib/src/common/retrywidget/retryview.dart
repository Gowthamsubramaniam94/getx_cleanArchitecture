import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';

class RetryView extends StatefulWidget{
  Function retry;
  String message;

  RetryView({required this.retry,this.message='Something went wrong...'});

  @override
  _RetryViewState createState() => _RetryViewState();
}

class _RetryViewState extends State<RetryView> {
  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.white,child: Center(
        child: Container(margin: EdgeInsets.all(10.0),
          child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,children: [
            Container(child: Text(widget.message??''),),
            Container(child: ElevatedButton(
              child: Text('Retry'),
              onPressed:()=> widget.retry,
            ),)
          ],),
        )),);
  }
}
