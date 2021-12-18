// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'package:untitled3/helpers/helpers.dart';
// import 'package:untitled3/pref/shared_pref_controller.dart';
//
// /* بدنا نعرف عشان عنا closure's وعنا void وبدنا نرجع منو bool */
// /*وسيط للاتصال عشان بنفعش يرجع bool  */
// /* يعني بدل ال return*/
// typedef UploadImageCallback = void Function(
//     {required bool status,
//     StudentImage? studentImage,
//     required String message});
//
// class ImagesApiController with Helpers {
//   /*path مسار الملف الي بدي ارفعوا*/
//   Future<void> uploadImage(BuildContext context,
//       {required String path,
//       required UploadImageCallback uploadImageCallback}) async {
//     var url = Uri.parse(ApiSettings.images.replaceFirst('/{id}', ''));
//     var request = http.MultipartRequest('POST', url);
//     /* image هي ال key  اسم الي بدي ارسل الصورة عليه */
//     http.MultipartFile imageFile =
//         await http.MultipartFile.fromPath('image', path);
//     request.files.add(imageFile);
//     /* لو كان الrequest في ال api بيرسل م الصورة اسم في ال key */
//     // request.fields['name']='Name';
//     /*عشان عملية الرفع تحتاج يكون لي بدو يرفع authorization  */
//     request.headers[HttpHeaders.authorizationHeader] =
//         SharedPrefController().token;
//     request.headers[HttpHeaders.acceptHeader] = 'application/json';
//     var response = await request.send();
//     response.stream.transform(utf8.decoder).listen((value) {
//       if (response.statusCode == 201) {
//         var jsonResponse = jsonDecode(value);
//         StudentImage studentImage =
//             StudentImage.fromjson(jsonResponse(value)['data']);
//         uploadImageCallback(
//             status: true,
//             studentImage: studentImage,
//             message: jsonResponse['message']);
//        // showSnackBar(context: context, message: jsonResponse['message']);
//         /*لما احتاج اظهر رساالة من عندي مش  من ال api*/
//         //showSnackBar(context: context, message: 'message');
//       } else if (response.statusCode == 400) {
//         uploadImageCallback(
//             status: false, message: jsonDecode(value)['message']);
//        // showSnackBar(context: context, message: jsonDecode(value)['message'],error: true);
//
//       } else if (response.statusCode == 500) {
//         uploadImageCallback(
//             status: false, message: 'Something went wrong,try again! ');
//        // showSnackBar(context: context, message: jsonDecode(value)['message'],error: true);
//
//       }
//     });
//   }
//
//   Future<List<StudentImage>> images(BuildContext context) async {
//     var url = Uri.parse(ApiSettings.images.replaceFirst('/{id}', ''));
//     var response = await http.get(url, headers: {
//       HttpHeaders.acceptHeader: 'application/json',
//       HttpHeaders.authorizationHeader: SharedPrefController().token,
//     });
//     if (response.statusCode == 200) {
//       var imagesJsonArray = jsonDecode(response.body)['data'] as List;
//       return imagesJsonArray
//           .map((imageJsonObject) => StudentImage.fromjson(imageJsonObject))
//           .toList();
//     } else {
//       showSnackBar(
//           context: context,
//           message: 'Something went wrong,try agin!',
//           error: true);
//     }
//     return [];
//   }
//
//   Future<bool> deleteImage(BuildContext context, {required int id}) async {
//     var url = Uri.parse(ApiSettings.images.replaceFirst('{}id', id.toString()));
//     var response = await http.delete(url, headers: {
//       HttpHeaders.authorizationHeader: SharedPrefController().token,
//       HttpHeaders.acceptHeader: 'application/json',
//     });
//     if (response.statusCode == 200) {
//       showSnackBar(
//           context: context, message: jsonDecode(response.body)['message']);
//       return true;
//     } else {
//       showSnackBar(
//           context: context,
//           message: 'Something went worn ,try agin!',
//           error: true);
//     }
//     return false;
//   }
// }
