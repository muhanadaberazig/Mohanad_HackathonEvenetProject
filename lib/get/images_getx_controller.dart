//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class ImagesGetxController extends GetxController {
//   RxList<StudentImage> studentImages = <StudentImage>[].obs;
//   final ImagesApiController _imagesApiController = ImagesApiController();
//   static ImagesGetxController get to => Get.find();
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//   }
//
//   //Read-Upload-Delete
//   Future<void> read(BuildContext context) async {
//     studentImages.value = await _imagesApiController.images(context);
//   }
//
//   Future<void> uploadImage(
//       {required BuildContext context,
//       required String path,
//       required UploadImageCallback uploadImageCallback}) async {
//       await _imagesApiController.uploadImage(
//       context,
//       path: path,
//       uploadImageCallback: ({required String message,required bool status, studentImage}) {
//         if(status) studentImages.add(studentImage!);
//         uploadImageCallback(status: status,message: message );
//       },
//     );
//   }
//   Future<bool> deleteImage(BuildContext context,{required int id})async{
//     bool deleted =await _imagesApiController.deleteImage(context, id: id);
//     if(deleted){
//       int index =studentImages.indexWhere((element) => element.id==id);
//       if(index !=-1){
//         studentImages.removeAt(index);
//       }
//
//     }
//     return deleted;
//   }
// }
