// import 'dart:io';
//
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class UploadImageScreen extends StatefulWidget {
//   const UploadImageScreen({Key? key}) : super(key: key);
//
//   @override
//   _UploadImageScreenState createState() => _UploadImageScreenState();
// }
//
// class _UploadImageScreenState extends State<UploadImageScreen>  with Helpers{
//   ImagePicker _imagePicker = ImagePicker();
//   XFile? _pickedFile;
//   double? _linearProgressValue=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Upload Image'),
//         ),
//         body: Column(
//           children: [
//             /*خط التحميل الي بيكون فوق لصورة*/
//             LinearProgressIndicator(
//               minHeight: 5,
//               color: Colors.blue,
//               value: _linearProgressValue,
//             ),
//             Expanded(
//               child: _pickedFile != null
//                   ? Image.file(File(_pickedFile!.path))
//                   : TextButton(
//                       onPressed: () async =>_pickImage(),
//                   style: TextButton.styleFrom(minimumSize: Size(double.infinity, 0)),
//                   child: Text('Pick Image')),
//             ),
//             ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                     minimumSize: Size(double.infinity, 60)),
//                 onPressed: () async=>await performUpload(),
//                 icon: Icon(Icons.cloud_upload),
//                 label: Text('UPLOA',style: TextStyle(fontWeight: FontWeight.bold),),)
//           ],
//         )
//     );
//   }
//   /*لرفع الصورة*/
//   Future<void> _pickImage()async{
//     XFile? imageFile =
//     await _imagePicker.pickImage(source: ImageSource.gallery,imageQuality: 50);
//     if(imageFile != null){
//       setState(() {
//         _pickedFile=imageFile;
//       });
//     }
//   }
//   Future <void> performUpload()async{
//     if(checkData()){
//       await uploadImage();
//     }
//   }
//   bool checkData(){
//     if(_pickedFile != null){
//       return true;
//     }
//     showSnackBar(context: context, message: 'Select image to Upload',error: true);
//     return false;
//   }
//   Future <void> uploadImage()async{
//     _changeProgresValue(value: null);
//    ImagesGetxController.to.uploadImage(context: context, path: _pickedFile!.path, uploadImageCallback: ({required String message,required bool status, studentImage}) {
//     if(status){
//       _changeProgresValue(value: 1);
//       showSnackBar(context: context, message: message);
//     }else{
//       _changeProgresValue(value: 0);
//       showSnackBar(context: context, message: message,error: true);
//     }
//
//    },
//    );
//   }
//   /*لعملية الرفع*/
//   void _changeProgresValue({double? value}){
//     setState(() {
//       _linearProgressValue=value;
//     });
//
//   }
// }
