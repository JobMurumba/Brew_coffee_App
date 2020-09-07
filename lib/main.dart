import 'package:breq_crew/models/user.dart';
import 'package:breq_crew/screens/wrapper.dart';
import 'package:breq_crew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      //our stream is called user
      value: AuthService().user,
      child: MaterialApp(
        // This trailing comma makes auto-formatting nicer for build methods.
        home: Wrapper(),
      ),
    );
  }
}
