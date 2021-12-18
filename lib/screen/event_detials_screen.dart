import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class EventDetaile extends StatefulWidget {
  const EventDetaile({Key? key}) : super(key: key);

  @override
  _EventDetaileState createState() => _EventDetaileState();
}

class _EventDetaileState extends State<EventDetaile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Event Name',
          style: TextStyle(fontSize: 18, color: HexColor('#3E3A57')),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.add),
          Icon(Icons.image),
        ],
      ),
      body: ListView(
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 206.h,
            width: 343.w,
            child: Stack(
              children: [
                SizedBox(
                    height: 140.h,
                    width: double.infinity,
                    child: Image.asset(
                      "images/UCAS Events.png",
                      fit: BoxFit.fill,
                    )),
                Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 10.w, right: 40.w, bottom: 7.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.withOpacity(.5),
                    ),
                    height: 80.h,
                    width: 90.w,
                    padding: EdgeInsets.all(7.w),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.ac_unit),
                              Text(
                                "6 Events",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Icon(Icons.ac_unit),
                              Text(
                                "6 Events",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 34.w),
            child: Container(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Event Name Appear Here",
                style: TextStyle(fontSize: 22, color: HexColor('#403B58')),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 16.w),
                child: Row(
                  children: [
                    Icon(Icons.lock_clock),
                    Text('9.00am'),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
                width: 30,
              ),
              Row(
                children: [
                  Icon(Icons.date_range),
                  Text('12/12/2020'),

                ],
              ),
              SizedBox(
                height: 5,
                width: 30,
              ),
              Row(
                children: [
                  Icon(Icons.image),
                  Text('9.00am'),

                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.8.h, left: 16.w),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: HexColor('#403B58'),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                      color: HexColor('#403B58'),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h, left: 16.w),
            child: Row(
              children: [
                Icon(
                  Icons.info,
                  color: HexColor('#403B58'),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Text(
                  'info',
                  style: TextStyle(
                      color: HexColor('#403B58'),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 4.h,left: 16.w,right: 16.w),
            child: Container(
              width: 343.w,
              child: Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua',style: TextStyle(fontSize: 15,color: HexColor('#807C94')),),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 9.h,left: 45.w,right: 45.w),
            child: Divider(),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 15.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('Comments',style: TextStyle(color: HexColor('#403B58'),fontSize: 15,fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 5.w,),
                Text('(22)',style: TextStyle(color: HexColor('#807C94'),fontSize: 12,fontWeight: FontWeight.bold)),
                SizedBox(width: 199.w,),
                Text('See All',style: TextStyle(color: HexColor('#807C94'),fontSize: 12,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.only(top: 5.h,right: 16.w,left: 16.w),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 12.h,bottom: 33.h,left: 12.w),
                        child: Image.asset('images/as.JPG',width: 80.w,height: 80.h,),
                      ),
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 9.w, top: 8.h),
                            child: Text(
                              'Slava John',
                              style: TextStyle(
                                  fontSize: 13, color: HexColor('#403B58')),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.w,top: 10.h),
                            child: Text(
                              'Comment Appear Here',
                              style: TextStyle(
                                  fontSize: 15, color: HexColor('#423E5B')),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w,top: 10.h),
                            child: Text(
                              '12/12/2020   - 12:18am',
                              style: TextStyle(
                                  fontSize: 11, color: HexColor('#423E5B')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
