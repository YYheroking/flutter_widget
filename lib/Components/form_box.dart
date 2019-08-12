import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum DiaLogOption {
  A,B,C
}

class FormBoxDemo extends StatefulWidget {
  @override
  _FormBoxDemoState createState() => _FormBoxDemoState();
}

class _FormBoxDemoState extends State<FormBoxDemo> {
  
   _openSimpleDiaLogFunc (){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          title: Text('SimpleDialog'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: (){
                Navigator.pop(context,DiaLogOption.A);
              },
            ),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: (){
                Navigator.pop(context,DiaLogOption.B);
              },
            ),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: (){
                Navigator.pop(context,DiaLogOption.C);
              },
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SimpleDiaLogDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: _openSimpleDiaLogFunc,
      ),
      body: SimpleDiaLog()
    );
  }
}

class SimpleDiaLog extends StatefulWidget {
  @override
  _SimpleDiaLogState createState() => _SimpleDiaLogState();
}

class _SimpleDiaLogState extends State<SimpleDiaLog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}


class HomeModelDemo extends StatefulWidget {
  @override
  _HomeModelDemoState createState() => _HomeModelDemoState();
}

class _HomeModelDemoState extends State<HomeModelDemo> {
  bool _stateValue = true;
  int _stateValueRadio = 0;
  DateTime selectedtime = DateTime.now();
  TimeOfDay selectedDaytime = TimeOfDay(hour: 10,minute: 49);

  void _handelRadio(int value){
    setState(() {
      _stateValueRadio = value;
    });
  }

  _selectedDate() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedtime,
      firstDate: DateTime(1949),
      lastDate: DateTime(2030)
    );

    if (date == null) return;
    setState(() {
      selectedtime = date;
    });
  }

  Future <void> _selectedDayTime() async {
    final TimeOfDay dayTime = await showTimePicker(
      context: context,
      initialTime: selectedDaytime,

    );

    if (dayTime == null) return;
    setState(() {
      selectedDaytime = dayTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Checkbox(
              value: _stateValue,
              activeColor: Colors.orange,
              onChanged: (value){
                setState(() {
                  _stateValue = value;
                });
              },
            ),
            CheckboxListTile(
              value: _stateValue,
              title: Text('checkBox_First_listTile'),
              subtitle: Text('descp'),
              secondary: Icon(Icons.bookmark_border),
              selected: _stateValue,
              onChanged: (value){
                setState(() {
                  _stateValue = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _stateValueRadio,
                  onChanged: _handelRadio,
                ),
                Radio(
                  value: 1,
                  groupValue: _stateValueRadio,
                  onChanged: _handelRadio,
                )
              ],
            ),
            SizedBox(height: 16.0,),
            InkWell(
              onTap: _selectedDate,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.access_time),
                  SizedBox(width: 10.0,),
                  Text(DateFormat.yMd().format(selectedtime))
                ],
              ),
            ),
            SizedBox(height: 16.0,),
            InkWell(
              onTap: _selectedDayTime,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.time_to_leave),
                  SizedBox(width: 10.0,),
                  Text(selectedDaytime.format(context)),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
