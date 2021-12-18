
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/api/controlers/auth_api_controller.dart';
import 'package:untitled3/helpers/helpers.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _mobileTextController;
  late TextEditingController _passwordTextController;

  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobileTextController = TextEditingController();
    _passwordTextController = TextEditingController();

    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigateToRegisterScreen;
    // _tapGestureRecognizer.onTap = navigateToRegisterScreen;
  }

  void navigateToRegisterScreen() {
    Navigator.pushNamed(context, '/register_screen');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _mobileTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250.h,
            width: 304.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 76.w, right:76.w, top: 149.h),
                  child: Image.asset('images/UCAS Events.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 46.w, top: 50.h),
            child: const Text(
              'welcome  to back',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 46.w, top: 10.h),
            child:  Text(
              'Login with',
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: HexColor('#253975')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 30.h),
            child:  Text(
              'Phone',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#040404')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 16.w, right: 16.w),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _mobileTextController,
              decoration: InputDecoration(
                  enabledBorder: border(),
                  focusedBorder: border(borderColor: Colors.black54),
                  //suffixIcon:
                  label: Text(
                    'Enter your phone',
                    style: TextStyle(fontSize: 16, color: HexColor('#9A9696')),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 21.h),
            child:  Text(
              'Password',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#040404')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 16.w, right: 16.w),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _passwordTextController,
              decoration: InputDecoration(
                  enabledBorder: border(),
                  focusedBorder: border(borderColor: Colors.black54),
                  //suffixIcon:
                  label: Text(
                    '* * * * *',
                    style: TextStyle(fontSize: 16, color: HexColor('#9A9696')),
                  )),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 79.h,left: 25.w,right: 25.w),
            child: TextButton(
                onPressed: () {},
                child: Container(
                    decoration: BoxDecoration(
                        color:HexColor('#253975'),
                        borderRadius: BorderRadius.circular(16)),
                    height: 48.h,
                    width: 325.w,
                    child: TextButton(
                        onPressed: ()
                        async => await performLogin(),

                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )))),
          ),
          SizedBox(
            height: 20.h,
          ),
          Divider(
            endIndent: 10,
            indent: 10,
            thickness: 2,
            color: HexColor('#EEEEEE'),
          ),

        ],
      ),
    );
  }

  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_mobileTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(
      context: context,
      message: 'Enter required data!',
      error: true,
    );
    return false;
  }

  Future<void> login() async {
    bool status = await AuthApiController().login(
      context,
      mobile: _mobileTextController.text,
      password: _passwordTextController.text,
    );
    if (status) {
        Navigator.pushNamed(context, '/category_screen');
    }
  }
}

OutlineInputBorder border({Color borderColor = Colors.grey}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: borderColor,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(10),
  );
}
