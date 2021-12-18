import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/api/controlers/auth_api_controller.dart';
import 'package:untitled3/api/controlers/category_api_contreler.dart';
import 'package:untitled3/api/models/category.dart';

import 'events_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late Future<List<Category>> _future;
  List<Category> _categories = <Category>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = UserApiController().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Categories",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/event_tap_screen");
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                )),
            IconButton(
              onPressed: () async {
                await logout(context);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: FutureBuilder<List<Category>>(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              _categories = snapshot.data ?? [];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 164 / 184,
                    crossAxisSpacing: 10,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          color: Colors.black12,
                          height: 140.h,
                          width: 148.w,
                          child: Stack(
                            children: [
                              SizedBox(
                                  height: 140.h,
                                  width: 148.w,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EventScreen(id: _categories[index].id),
                                          ),
                                        );
                                      },
                                      child: Image.network(_categories[index].image)) ),
                              Align(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 10.w, right: 40.w, bottom: 7.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.grey.withOpacity(.5),
                                  ),
                                  height: 35.h,
                                  width: 90.w,
                                  padding: EdgeInsets.all(7.w),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.ac_unit),
                                        Text(
                                          _categories[index].eventsCount.toString(),
                                          style: TextStyle(color: Colors.white),
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
                          height: 10.h,
                        ),
                        Text(
                          "Information Technology",
                          style: TextStyle(fontSize: 10.sp),
                        )
                      ],
                    );
                  },
                ),
              );
            } else {
              return Center(
                child: Column(
                  children: const [
                    Icon(Icons.warning, size: 80),
                    Text(
                      'NO DATA',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ));
  }

  Future<void> logout(BuildContext context) async {
    bool logOut = await AuthApiController().logout();
    if (logOut) Navigator.pushReplacementNamed(context, '/login_screen');
  }
}
/*
* Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: GridView.builder(

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              childAspectRatio: 164 / 184,

              crossAxisSpacing: 10,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    color: Colors.black12,
                    height: 140.h,
                    width: 148.w,
                    child: Stack(
                      children: [
                        SizedBox(
                            height: 140.h,
                            width: 148.w,
                            child: Image.asset(
                              "images/UCAS Events.png",
                              fit: BoxFit.fill,
                            )),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Container(
                            margin: EdgeInsets.only(left: 10.w,right: 40.w,bottom: 7.h),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(.5),),
                            height: 35.h,
                            width:90.w,

                            padding: EdgeInsets.all(7.w),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text("6 Events",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Information Technology",
                    style: TextStyle(fontSize: 10.sp),
                  )
                ],
              );
            },
          ),
        ));*/
