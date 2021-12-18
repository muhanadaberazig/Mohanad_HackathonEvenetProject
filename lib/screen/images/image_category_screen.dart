import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ImageCAtegory extends StatefulWidget {
  const ImageCAtegory({Key? key}) : super(key: key);

  @override
  _ImageCAtegoryState createState() => _ImageCAtegoryState();
}

class _ImageCAtegoryState extends State<ImageCAtegory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Container(
            width: 50.w,
            height: 10.h,
            decoration: BoxDecoration(
              color: HexColor('#707070'),
              borderRadius: BorderRadius.circular(8)
            ),
              child: Icon(Icons.add,color: HexColor('#4E486A'),)),
          )],
        title: Text('Category',style: TextStyle(color: HexColor('#1B2D49'),fontSize: 17,fontWeight: FontWeight.bold),),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset('images/UCAS Events.png'),
                    // Image.network(
                    //   ApiSettings.getImagesUrl(
                    //       controller.studentImages[index].image),
                    //   fit: BoxFit.cover,
                    //   height: double.infinity,
                    // ),
                    Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Container(
                          padding:
                          const EdgeInsetsDirectional.only(start: 10),
                          // height: 45,
                          color: Colors.white60,
                          alignment: AlignmentDirectional.centerEnd,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                    'Events',
                                   // ' controller.studentImages[index].image',
                                    maxLines: 1,
                                    /*لما يكون الكلام كبير اكبر من الحجم بيطللك الكلام و...*/
                                    overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                Text('data')
              ],
            ),
          );
        },
      ),
    );
  }
}
