import 'package:flutter/material.dart';
class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  late TimeOfDay time;
  late TimeOfDay picked;
  late DateTime _myData;
  late DateTime day;
  // String time='?';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time=TimeOfDay.now();
    _myData=DateTime.now();
  }
  Future<Null>selectedtime (BuildContext context )async{
    picked =(await showTimePicker(
        context: context,
        initialTime: time))!;
    if(picked != null){
      setState(() {
        time=picked;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Center(
              child: IconButton(
                onPressed: (){
                  selectedtime(context);
                },
                icon: Icon(Icons.access_alarm),
              ),
            ),
            Text('${time.hour}:${time.minute}'),
            Center(
              child: IconButton(
                onPressed: (){
                  selectedtime(context);
                },
                icon: Icon(Icons.access_alarm),
              ),
            ),
            Text('${time.hour}:${time.minute}')
          ],

        ),
      ),
    );
  }
}
