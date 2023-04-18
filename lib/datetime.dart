import 'package:flutter/material.dart';
import 'package:wscube/UI/ui.dart';
import 'package:intl/intl.dart';

class dtPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = TextEditingController();
    var password = TextEditingController();
    var phone = TextEditingController();
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome Datetime",
          style: h1(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2030),
                );
                if (date != null) {}
              },
              child: Text(
                "Show date",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input, //or dail
                );
                if (time != null) {}
              },
              child: Text(
                "Show time",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
