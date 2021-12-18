
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled3/pref/shared_pref_controller.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
    //   String route =SharedPrefController().loggedIn? '/category_screen':'/login_screen';
    // Navigator.pushReplacementNamed(context, route);
      Navigator.pushNamed(context, '/login_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Colors.blue.shade800,
                Colors.blue,
              ],
            ),
          ),
          child: const Text(
            'API APP',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      );
  }
}
