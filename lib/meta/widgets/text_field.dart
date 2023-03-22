import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,
  required this.textEditingController
  }) : super(key: key);


  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.number,
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'GtLight',
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(10)),

      ),
    );
  }
}
