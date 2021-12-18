import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/pref/shared_pref_controller.dart';
import 'package:untitled3/screen/auth/login_screen.dart';
import 'package:untitled3/screen/category_screenn.dart';
import 'package:untitled3/screen/create_event_screen.dart';
import 'package:untitled3/screen/data.dart';
import 'package:untitled3/screen/event_detials_screen.dart';
import 'package:untitled3/screen/events_screen.dart';
import 'package:untitled3/screen/images/image_category_screen.dart';
import 'package:untitled3/screen/launch_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: ()=>MaterialApp(
        initialRoute: '/launch_screen',
        routes: {
          '/launch_screen': (context) => LaunchScreen(),
          '/Data_screen': (context) => Data(),
          '/login_screen': (context) => LoginScreen(),
          '/category_screen': (context) => CategoryScreen(),
          // '/event_screen': (context) => EventScreen(),
          '/event_detaile_screen': (context) => EventDetaile(),
          '/create_event_screen': (context) => CreateEvent(),
          '/create_event_screen': (context) => CreateEvent(),

        },
      ),


    );
  }
}


