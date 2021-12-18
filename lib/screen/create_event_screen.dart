import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled3/widgets/app_text_field.dart';
class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  late TextEditingController _nameTextEditingController;
  late TextEditingController _dataTextEditingController;
  late TextEditingController _timeTextEditingController;
  late TextEditingController _houreTextEditingController;
  late TextEditingController _ctegoryTextEditingController;
  late TextEditingController _informationTextEditingController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
_nameTextEditingController =TextEditingController();
_ctegoryTextEditingController =TextEditingController();
_dataTextEditingController =TextEditingController();
_houreTextEditingController =TextEditingController();
_informationTextEditingController =TextEditingController();
_timeTextEditingController=TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _timeTextEditingController.dispose();
    _informationTextEditingController.dispose();
   _houreTextEditingController.dispose();
    _dataTextEditingController.dispose();
    _nameTextEditingController.dispose();
    _ctegoryTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'New event',
          style: TextStyle(fontSize: 18, color: HexColor('#3E3A57')),
        ),
        centerTitle: true,

      ),
      body:ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25.h,left: 16.w),
            child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 5.h),
            child: AppTextField(label: 'Name',controller: _nameTextEditingController,hint: 'Enter event name',),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              child: Row(
                children: [
                  SizedBox(width: 16.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25.h,),
                          child: Text('Data',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                        AppTextField(label: '', hint: '21 December 2021', controller: _dataTextEditingController)
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25.h,left: 16.w),
                          child: Text('Time',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                        AppTextField(label: '', hint: '21 December 2021', controller: _timeTextEditingController)
                      ],
                    ),
                  ),
                  SizedBox(width: 16.w,),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h,left: 16.w),
            child: Text('Hours',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 5.h),
            child: AppTextField(label: 'Hours',controller: _houreTextEditingController,hint: 'Enter event name',),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h,left: 16.w),
            child: Text('Category',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 5.h),
            child: AppTextField(label: 'Category',controller: _ctegoryTextEditingController,hint: 'Enter event name',),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h,left: 16.w),
            child: Text('Location',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 5.h),
            child: Container(
                child: AppTextField(label: 'Location',controller: _informationTextEditingController,hint: 'Enter event name',)),
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
                        onPressed: () {},
                        //async => await performLogin(),

                        child: const Text(
                          'Create new event ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )))),
          ),


        ],
      ) ,
    );
  }
}
