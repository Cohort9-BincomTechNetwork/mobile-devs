import 'package:flutter/material.dart';

class MakeInput extends StatelessWidget {
  MakeInput({required this.label, this.obscureText = false});
  String label;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.cancel_rounded),
            hintText: label,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  // color: Colors.grey[400],
                  ),
            ),
            border: OutlineInputBorder(
                // borderSide: BorderSide(color: Colors.grey[400])
                ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
