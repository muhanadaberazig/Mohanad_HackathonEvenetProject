//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:untitled3/get/images_getx_controller.dart';
//
// class ImagesScreen extends StatefulWidget {
//   const ImagesScreen({Key? key}) : super(key: key);
//
//   @override
//   _ImagesScreenState createState() => _ImagesScreenState();
// }
//
// class _ImagesScreenState extends State<ImagesScreen> with Helpers {
//   final ImagesGetxController _imagesGetxController =
//       Get.put(ImagesGetxController());
//   List<StudentImage> studentImages = <StudentImage>[];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Images'),
//           actions: [
//             IconButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/upload_image_screen');
//                 },
//                 icon: Icon(Icons.cloud_upload))
//           ],
//         ),
//         body: GetX<ImagesGetxController>(
//           builder: (controller) {
//             if (controller.studentImages.isNotEmpty) {
//               return GridView.builder(
//                 padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                 itemCount: controller.studentImages.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 10,
//                     crossAxisSpacing: 10),
//                 itemBuilder: (context, index) {
//                   return
//                     Card(
//                     clipBehavior: Clip.antiAlias,
//                     elevation: 4,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Stack(
//                       children: [
//                         Image.network(
//                           ApiSettings.getImagesUrl(
//                               controller.studentImages[index].image),
//                           fit: BoxFit.cover,
//                           height: double.infinity,
//                         ),
//                         Align(
//                             alignment: AlignmentDirectional.bottomCenter,
//                             child: Container(
//                               padding:
//                                   const EdgeInsetsDirectional.only(start: 10),
//                               height: 45,
//                               color: Colors.white60,
//                               alignment: AlignmentDirectional.centerEnd,
//                               child: Row(
//                                 children: [
//                                   Expanded(
//                                       child: Text(
//                                     controller.studentImages[index].image,
//                                     maxLines: 1,
//                                     /*لما يكون الكلام كبير اكبر من الحجم بيطللك الكلام و...*/
//                                     overflow: TextOverflow.ellipsis,
//                                   )),
//                                   IconButton(
//                                     onPressed: () async => await deleteImage(
//                                         id: controller.studentImages[index].id),
//                                     icon: Icon(Icons.delete),
//                                     color: Colors.red.shade700,
//                                   ),
//                                 ],
//                               ),
//                             ))
//                       ],
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return Center(
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.warning,
//                       size: 80,
//                       color: Colors.grey,
//                     ),
//                     Text(
//                       'No Data',
//                       style: TextStyle(
//                           color: Colors.grey, fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//               );
//             }
//           },
//         ));
//   }
//
//   Future<void> deleteImage({required int id}) async {
//     bool deleted = await ImagesGetxController.to.deleteImage(context, id: id);
//   }
// }
