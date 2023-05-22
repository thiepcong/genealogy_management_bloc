import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'route_app.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent
    //         //color set to purple or set your own color
    //         ));
  }

  @override
  Widget build(BuildContext context) {
    return const RouteApp(
        // initialAuthenState: widget.initialAuthenState,
        // initialDeepLink: widget.initialDeepLink,
        );
  }
}
