import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cross Connectivity Example'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ConnectivityWidgetWrapper(
                  offlineWidget: Container(
                    height: 100.0,
                    width: 100.0,child: Text('No Internet',style: TextStyle(color: Colors.white),),
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  child: Container(
                    height: 100.0,
                    width: 100.0,child: Text('Internet connected',style: TextStyle(color: Colors.white),),
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  stacked: false,
                ),

                /*Center(
              child: ConnectivityBuilder(
                builder: (context, isConnected, status) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      isConnected == true
                          ? Icons.signal_wifi_4_bar
                          : Icons.signal_wifi_off,
                      color: isConnected == true ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '$status',
                      style: TextStyle(
                        color: status != ConnectivityStatus.none
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
              ],
            ),
          ),
        ));
  }
}
