import 'package:flutter/material.dart';
import 'package:login_page/cores/constantancs.dart';
import 'package:login_page/cores/custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    required this.text,
    required this.hint,
    required this.onSaved,
    required this.validator,
  }) : super(key: key);

  final String text;
  final String hint;
  final void Function(String?) onSaved; // تحديد نوع الدالة لـ onSaved
  final String? Function(String?)? validator; // تحديد نوع الدالة لـ validator

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(text: text, fontSize: 14, color: kPrimaryColor),
          TextFormField(
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              hintText: hint,
              helperStyle: TextStyle(
                color: Colors.grey,
              ),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
