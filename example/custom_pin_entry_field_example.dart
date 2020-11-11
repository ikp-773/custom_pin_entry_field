import 'package:custom_pin_entry_field/custom_pin_entry_field.dart';
import 'package:flutter/material.dart';

class ExamplePinEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pin Entry Example"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomPinEntryField(
            showFieldAsBox: true,
            onSubmit: (String pin) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Pin"),
                      content: Text('Pin entered is $pin'),
                    );
                  }); //end showDialog()
            }, // end onSubmit
          ), // end PinEntryTextField()
        ), // end Padding()
      ), // end Container()
    );
  }
}
